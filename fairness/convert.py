#!/usr/bin/env python3 -B
"""raw -> fft-format CSV. fetches into a tmp dir, no raw/ in repo.
(c) 2026, Tim Menzies <timm@ieee.org>, MIT license
usage: python3 convert.py  (or `make recreate`)"""
import csv, os, tempfile, urllib.request, zipfile

OUT = os.path.dirname(os.path.abspath(__file__))
RAW = tempfile.mkdtemp(prefix="fairnez-")

SOURCES = {
  "adult.data":      "https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data",
  "german.data":     "https://archive.ics.uci.edu/ml/machine-learning-databases/statlog/german/german.data",
  "compas.csv":      "https://raw.githubusercontent.com/propublica/compas-analysis/master/compas-scores-two-years.csv",
  "bank.zip":        "https://archive.ics.uci.edu/ml/machine-learning-databases/00222/bank.zip",
  "law.csv":         "https://raw.githubusercontent.com/tailequy/fairness_dataset/main/experiments/data/law_school_clean.csv",
  "communities.data":"https://archive.ics.uci.edu/ml/machine-learning-databases/communities/communities.data",
  "communities.names":"https://archive.ics.uci.edu/ml/machine-learning-databases/communities/communities.names",
}

def fetch():
  for name, url in SOURCES.items():
    dst = os.path.join(RAW, name)
    print("fetching %s ..." % name)
    urllib.request.urlretrieve(url, dst)
  with zipfile.ZipFile(os.path.join(RAW, "bank.zip")) as z:
    z.extractall(RAW)

fetch()

def write(path, header, rows):
  with open(os.path.join(OUT, path), "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(header)
    w.writerows(rows)
  print("wrote %-15s %5d rows" % (path, len(rows)))

# ---------------- adult ----------------
header = ["Age","workclass","FnlwgtX","education","Education_num",
          "marital","occupation","relationship","race","sex",
          "Capital_gain","Capital_loss","Hours_per_week","country",
          "income!"]
rows = []
for ln in open(os.path.join(RAW, "adult.data")):
  cells = [c.strip() for c in ln.strip().split(",")]
  if len(cells) != 15: continue
  if "?" in cells: continue
  rows.append(cells)
write("adult.csv", header, rows)

# ---------------- german ----------------
# UCI Statlog/German features (21 cols): mix of A-codes (sym) + nums.
# last col: 1=good, 2=bad credit.
g_names = ["status","Months","credit_hist","purpose","Credit_amt",
           "savings","employment","Install_rate","sex_marital",
           "guarantors","Resid_since","property","Age","other_install",
           "housing","Existing_credits","job","Liable","telephone",
           "foreign","credit!"]
rows = []
for ln in open(os.path.join(RAW, "german.data")):
  cells = ln.strip().split()
  if len(cells) != 21: continue
  cells[-1] = "good" if cells[-1] == "1" else "bad"
  rows.append(cells)
write("german.csv", g_names, rows)

# ---------------- bank ----------------
src = os.path.join(RAW, "bank-full.csv")
with open(src) as f:
  raw = [ln.strip().replace('"','').split(";") for ln in f]
hdr_raw, *data = raw
# map names
b_names = ["Age","job","marital","education","default","Balance",
           "housing","loan","contact","Day","month","Duration",
           "Campaign","Pdays","Previous","poutcome","y!"]
write("bank.csv", b_names, data)

# ---------------- compas ----------------
src = os.path.join(RAW, "compas.csv")
with open(src) as f:
  reader = csv.reader(f); hdr = next(reader); rows_raw = list(reader)
keep = ["sex","age","age_cat","race","juv_fel_count","juv_misd_count",
        "juv_other_count","priors_count","c_charge_degree",
        "two_year_recid"]
idx = [hdr.index(k) for k in keep]
# ProPublica's standard filtering for the fairness subset:
#   days_b_screening_arrest in [-30, 30], is_recid != -1,
#   c_charge_degree != "O", score_text != "N/A"
need = ["days_b_screening_arrest","is_recid","c_charge_degree","score_text"]
nidx = [hdr.index(k) for k in need]
rows = []
for r in rows_raw:
  try:
    d = int(r[nidx[0]] or 0)
    if not (-30 <= d <= 30): continue
    if r[nidx[1]] == "-1": continue
    if r[nidx[2]] == "O":  continue
    if r[nidx[3]] == "N/A": continue
  except ValueError:
    continue
  rows.append([r[i] for i in idx])
c_hdr = ["sex","Age","age_cat","race","Juv_fel","Juv_misd",
         "Juv_other","Priors","c_charge_degree","two_year_recid!"]
write("compas.csv", c_hdr, rows)

# ---------------- law school (LSAC bar passage) ----------------
# source: tailequy/fairness_dataset cleaned mirror of Wightman 1998 LSAC.
# 12 cols. Klass = pass_bar (0/1). Sensitive: race, male (sex).
src = os.path.join(RAW, "law.csv")
with open(src) as f:
  reader = csv.reader(f); hdr = next(reader); raw_rows = list(reader)
sex_j = hdr.index("male")
pass_j = hdr.index("pass_bar")
rows = []
for r in raw_rows:
  if "" in (r[sex_j], r[pass_j]): continue
  r = list(r)
  r[sex_j] = "male" if r[sex_j].startswith("1") else "female"
  r[pass_j] = "yes" if r[pass_j].startswith("1") else "no"
  rows.append(r)
l_hdr = ["Decile1b","Decile3","Lsat","Ugpa","Zfygpa","Zgpa",
         "Fulltime","Fam_inc","sex","Tier","race","pass_bar!"]
write("law.csv", l_hdr, rows)

# ---------------- communities & crime ----------------
# UCI Communities and Crime. 128 cols, target ViolentCrimesPerPop (0..1).
# Standard fairness use: binarize at top-30% -> high_crime in {yes,no}.
# Sensitive: racepctblack (Num + ~) is the canonical proxy.
# Drop admin cols (state, county, community, communityname, fold).
names = []
for ln in open(os.path.join(RAW, "communities.names")):
  if ln.startswith("@attribute"):
    names.append(ln.split()[1])
DROP = {"state", "county", "community", "communityname", "fold"}
keep_j = [j for j, n in enumerate(names) if n not in DROP]
keep_names = [names[j] for j in keep_j]
# convert: capitalize numerics, X suffix for cols with too many "?"
raw_rows = []
for ln in open(os.path.join(RAW, "communities.data")):
  cells = ln.strip().split(",")
  if len(cells) != len(names): continue
  raw_rows.append([cells[j] for j in keep_j])
# target is ViolentCrimesPerPop = last col in keep
tgt_j = keep_names.index("ViolentCrimesPerPop")
vals = sorted(float(r[tgt_j]) for r in raw_rows if r[tgt_j] != "?")
cut = vals[int(0.70 * len(vals))]                # top-30% threshold
# col-quality pass: keep cols with <50% missing
miss = [sum(1 for r in raw_rows if r[j] == "?") for j in range(len(keep_names))]
good_j = [j for j, m in enumerate(miss) if m < 0.5 * len(raw_rows)]
keep_names = [keep_names[j] for j in good_j]
raw_rows = [[r[j] for j in good_j] for r in raw_rows]
tgt_j = keep_names.index("ViolentCrimesPerPop")
# fft header: capitalize numerics, klass! for target
c_hdr = []
for j, n in enumerate(keep_names):
  if j == tgt_j:
    c_hdr.append("high_crime!"); continue
  c_hdr.append(n[0].upper() + n[1:] if not n[0].isupper() else n)
rows = []
for r in raw_rows:
  try: v = float(r[tgt_j])
  except ValueError: continue
  r = list(r)
  r[tgt_j] = "yes" if v >= cut else "no"
  rows.append(r)
write("communities.csv", c_hdr, rows)
