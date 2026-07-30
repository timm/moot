"""positive (favorable) klass label per dataset.

fairness convention: 'positive' = the outcome that BENEFITS the individual.
SPD/ARD/AAOD signed-direction depends on this. Auto-picking minority gets
it wrong for compas/law/german/communities, so this file is authoritative.

read by fft's eval.py when -P/--pos == 'auto'.
"""
POSITIVE = {
  "adult.csv":       ">50K",   # high income; UCI Adult
  "german.csv":      "good",   # good credit risk; UCI Statlog
  "bank.csv":        "yes",    # subscribed term deposit; bank's POV
  "compas.csv":      0,        # no two-year recidivism; ProPublica
  "law.csv":         "yes",    # passed bar; LSAC Wightman 1998
  "communities.csv": "no",     # low crime community; UCI C&C, top-30% binarized
}
