#!/usr/bin/env python3 -B
"""
protect.py - propose / apply '~' protected-attr suffix on fairnez CSVs.
(c) 2026, Tim Menzies <timm@ieee.org>, MIT license

usage:
 python3 protect.py propose [CSV...]    # write proposals.txt
 python3 protect.py apply               # read proposals.txt, rewrite headers

Workflow:
 make propose        -> writes proposals.txt (one line per candidate)
 $EDITOR proposals.txt   # delete lines you reject; keep lines you approve
 make apply          -> rewrites CSV headers, adds '~' to approved cols

Idempotent: applying again with the same proposals.txt is a no-op
(skips cols that already end in '~').
"""
import csv, glob, os, re, sys

PROTECTED = {
  "sex", "gender",
  "race", "ethnic", "ethnicity", "color",
  "age",
  "religion", "creed",
  "nation", "national", "origin", "country", "citizenship", "foreign",
  "marital", "family", "relationship", "household",
  "disab", "handicap",
  "pregnan",
  "veteran",
  "orient",
  "language",
}

COVER = 0.7       # top-2 syms must cover >=70% of rows
MIN_GROUP = 100   # each of top-2 syms needs >=100 rows (confusion stable)
RATIO_MAX = 10    # t1/t2 ratio must be <=10 (avoid dominant-class skew)
HERE = os.path.dirname(os.path.abspath(__file__))
PROP = os.path.join(HERE, "proposals.txt")


def is_protected(name):
  tokens = re.split(r"[_\-\s]+", name.lower())
  return any(t.startswith(p) or p in t for t in tokens for p in PROTECTED)


def col_stats(rows, j):
  counts = {}
  for r in rows:
    if j < len(r): counts[r[j]] = counts.get(r[j], 0) + 1
  return counts


def is_num(values):
  if not values: return False
  for v in list(values)[:200]:
    try: float(v)
    except (ValueError, TypeError): return False
  return True


def propose_for(csv_path):
  # yield (col_index, raw_name, reason) for each candidate
  with open(csv_path, newline="") as f:
    reader = csv.reader(f)
    header = next(reader)
    rows = list(reader)
  out = []
  for j, name in enumerate(header):
    bare = name.rstrip("~+-!X")
    if not is_protected(bare): continue
    if name.endswith("~"):
      out.append((j, name, "already marked"))
      continue
    counts = col_stats(rows, j)
    vals = list(counts.keys())
    if is_num(vals):
      out.append((j, name, "numeric -> needs discretization"))
      continue
    if len(counts) < 2:
      continue
    top2 = sorted(counts.values(), reverse=True)[:2]
    cover = sum(top2) / max(1, sum(counts.values()))
    if cover < COVER:
      continue
    if min(top2) < MIN_GROUP:
      continue
    if top2[0] / top2[1] > RATIO_MAX:
      continue
    top_syms = sorted(counts.items(), key=lambda kv: -kv[1])[:2]
    out.append((j, name, "top2=%s,%s cover=%.2f" %
          (top_syms[0][0], top_syms[1][0], cover)))
  return out


def cmd_propose(paths):
  lines = []
  for p in sorted(paths):
    rel = os.path.relpath(p, HERE)
    for _, name, reason in propose_for(p):
      lines.append("%s\t%s\t%s" % (rel, name, reason))
  with open(PROP, "w") as f:
    f.write("# format: FILE<TAB>COLNAME<TAB>reason\n")
    f.write("# delete lines to REJECT. keep lines to APPROVE.\n")
    f.write("# then run: make apply\n")
    for ln in lines:
      f.write(ln + "\n")
  print("wrote %s with %d candidates" % (PROP, len(lines)))
  for ln in lines:
    print("  " + ln)


def cmd_apply():
  if not os.path.exists(PROP):
    sys.exit("no proposals.txt -- run propose first")
  approved = {}                                 # file -> {colname}
  for ln in open(PROP):
    ln = ln.split("#", 1)[0].rstrip()
    if not ln: continue
    parts = ln.split("\t")
    if len(parts) < 2: continue
    approved.setdefault(parts[0], set()).add(parts[1])
  for rel, cols in approved.items():
    path = os.path.join(HERE, rel)
    with open(path, newline="") as f:
      reader = csv.reader(f)
      header = next(reader)
      rows = list(reader)
    new_header = [(h + "~") if (h in cols and not h.endswith("~")) else h
           for h in header]
    if new_header == header:
      print("skip %s (already marked)" % rel)
      continue
    with open(path, "w", newline="") as f:
      w = csv.writer(f)
      w.writerow(new_header)
      w.writerows(rows)
    added = [h for h, nh in zip(header, new_header) if h != nh]
    print("updated %s: %s" % (rel, ", ".join(added)))


def main(argv):
  if len(argv) < 2:
    sys.exit(__doc__)
  cmd = argv[1]
  if cmd == "propose":
    paths = argv[2:] or sorted(glob.glob(os.path.join(HERE, "*.csv")))
    cmd_propose(paths)
  elif cmd == "apply":
    cmd_apply()
  else:
    sys.exit("unknown cmd: %s\n%s" % (cmd, __doc__))


if __name__ == "__main__":
  main(sys.argv)
