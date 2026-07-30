# metrics.md — which fairness measures fairnez uses, and why

## tl;dr

Use **three** confusion-matrix-derived fairness measures:

    SPD   Statistical Parity Difference     (independence)
    ARD   Accuracy Rate Difference          (misclassification)
    AAOD  Average Absolute Odds Difference  (differential / separation)

Each comes from a *different* empirical cluster of fairness metrics, so
together they cover the major distinct kinds of bias signal. Adding
more metrics from the same cluster gives redundant numbers, not new
information.

## big finding: many popular metrics measure the same thing

Hort et al. 2024 [1] surveyed 341 bias-mitigation papers and ranked
fairness metrics by usage frequency (their Table 10). Majumder et al.
2023 [2] empirically clustered 26 classification fairness metrics by
Spearman correlation of their scores across 7 datasets × 3 models
(their Table 4), finding only **7 underlying clusters**.

Cross-mapping the two:

    Hort metric                       uses   Majumder cluster
    ------------------------------    ----   --------------------------------
    Statistical Parity Diff (SPD)     136    4  Confusion-matrix Group
    Equality of Opportunity            91    4  (TPR-diff = C0, same cluster)
    Disparate Impact / P-rule          60    4  (C14)
    Equalized Odds                     51    4  (avg odds C9)
    False Positive Rate Diff           38    4  (C1)
    Accuracy Rate Difference           29    0  Misclassification
    Causal Discrimination               7    -- not in Majumder's 26
    Mean Difference                     6    (dataset-level: Table 5, cluster 2)
    Avg Abs Odds Difference            --    1  Differential Fairness
    Mutual Information                  4    -- not in 26
    Strong Demographic Disparity        1    -- not in 26

**The top 5 metrics by usage all collapse into Majumder cluster 4.**
The field is reporting the same thing five times under five names. A
paper that reports SPD + DI + EO + Equalized Odds + FPR-diff offers no
more information about fairness than a paper that reports SPD alone.

## why these three (not the popular five)

Picking five metrics from one cluster is theatre. Picking one metric
from each of three distinct clusters is signal. The three we pick:

    pick    Hort rank  cluster (Majumder)            harm it catches
    -----   ---------  ----------------------------  -----------------------
    SPD     #1 (136)   4 — Group / Independence      unequal acceptance rate
    ARD     #6  (29)   0 — Misclassification         unequal error rate
    AAOD    --          1 — Differential Fairness    unequal TPR+FPR combo

SPD covers gatekeeping bias (who gets the label). ARD covers
prediction-quality bias (who gets correct outcomes). AAOD covers
conditional-error bias (errors broken down by ground truth). The
Chouldechova [3] / Kleinberg [4] impossibility results show these axes
are mutually incompatible when base rates differ between groups — so
they are not just statistically distinct, they are structurally
distinct.

## definitions

Notation: S = sensitive attribute, two groups s₁, s₂ (top-2 syms,
see ../konfig/style_gist.md for protocol). Ŷ = prediction. Y = truth.
Per group, `confused()` yields TP/FP/FN/TN.

    SPD  = P(Ŷ=1 | S=s₁) − P(Ŷ=1 | S=s₂)
                                          ideal 0; range [-1, 1]

    ARD  = acc(s₁) − acc(s₂)              acc = (TP+TN)/(TP+FP+FN+TN)
                                          ideal 0; range [-1, 1]

    AAOD = ½ ( |FPR(s₁) − FPR(s₂)| + |TPR(s₁) − TPR(s₂)| )
                                          ideal 0; range [0, 1]

All three derive from `confused()` already in semble. No extra passes.
Stream into the multi-metric Welford gate at the Q1-threshold (0.25)
described in semble's ensemble notes — one Num per metric, drop on
any sub-threshold.

## what we drop, and why

- Disparate Impact, Equalized Odds, FPR-diff, TPR-diff, EO — all in
  cluster 4 with SPD. Redundant.
- Theil index, Generalized Entropy, CV, between-group variants —
  clusters 2 and 5. Insensitive to data changes per Majumder Table 6
  (small IQR across 100 runs); not useful for selection.
- Causal Discrimination, Counterfactual Fairness — needs a causal DAG
  per dataset. Out of scope for a tree-ensemble.
- Mutual Information / Calibration — sufficient signal not yet shown
  in surveys; reconsider when adopted by ≥20 papers.

## protected attributes

See `protect.py` and `proposals.txt`. Columns marked with `~` suffix
in CSV headers (e.g. `sex~`, `race~`, `Age~`) are the sensitive set
used as S above. For each protected col we take the top-2 symbol
groups (or median-split if Num); confusion per group; the three
gap metrics as defined.

## references

    [1] Hort, Chen, Zhang, Harman, Sarro. 2024.
        Bias Mitigation for Machine Learning Classifiers: A Comprehensive Survey.
        ACM J. Responsible Computing 1(2), Article 11.
        doi:10.1145/3631326

    [2] Majumder, Chakraborty, Bai, Stolee, Menzies. 2023.
        Fair Enough: Searching for Sufficient Measures of Fairness.
        ACM TOSEM 32(6), Article 134.
        doi:10.1145/3585006

    [3] Chouldechova. 2017.
        Fair prediction with disparate impact: A study of bias in
        recidivism prediction instruments.
        Big Data 5(2), 153-163.

    [4] Kleinberg, Mullainathan, Raghavan. 2017.
        Inherent Trade-offs in the Fair Determination of Risk Scores.
        ITCS 2017.
