<!-- Copyright (c) 2026 Tim Menzies, MIT License https://opensource.org/licenses/MIT -->
<a href="https://timm.fyi"><img align="right" src="https://img.shields.io/badge/Author-timm-dc143c?logo=readme&logoColor=white" alt="Author"></a><img align="right" src="https://img.shields.io/badge/Language-CSV-000080?logo=files&logoColor=white" alt="Language"><a href="https://choosealicense.com/licenses/mit/"><img align="right" src="https://img.shields.io/badge/License-MIT-32cd32?logo=open-source-initiative&logoColor=white" alt="License"></a><img align="right" src="https://img.shields.io/badge/Purpose-Fairness·Benchmarks-7b68ee?logo=githubcopilot&logoColor=white" alt="Purpose">

### [https://github.com/aiez/fairnez](https://github.com/aiez/fairnez)
Standard fairness-benchmark CSVs in fft column-suffix format. Adult, German, Bank, COMPAS. Each has a sensitive attribute (race / sex / age) and a binary klass. Use with [fft](https://github.com/aiez/fft).

```bash
# install and test
git clone https://github.com/aiez/fairnez && git clone https://github.com/aiez/fft fft
cd fft && python3 -B eval.py -f ../fairnez/compas.csv
```

**Sections:** [NAME](#name) | [SYNOPSIS](#synopsis) | [DATA](#data) | [DATASETS](#datasets) | [NOTES](#notes) | [RECREATE](#recreate) | [REFERENCES](#references) | [SEE ALSO](#see-also) | [LICENSE](#license) | [AUTHOR](#author)

**Files:** [adult.csv](https://github.com/aiez/fairnez#file-adult-csv) | [bank.csv](https://github.com/aiez/fairnez#file-bank-csv) | [communities.csv](https://github.com/aiez/fairnez#file-communities-csv) | [compas.csv](https://github.com/aiez/fairnez#file-compas-csv) | [german.csv](https://github.com/aiez/fairnez#file-german-csv) | [law.csv](https://github.com/aiez/fairnez#file-law-csv) | [convert.py](https://github.com/aiez/fairnez#file-convert-py) | [protect.py](https://github.com/aiez/fairnez#file-protect-py) | [labels.py](https://github.com/aiez/fairnez#file-labels-py)

## NAME

    fairnez - fairness benchmark datasets, fft-CSV format

## SYNOPSIS

    python3 -B eval.py -f fairnez/<dataset>.csv

## DATA

    Column-name suffix protocol (see ../konfig/style_gist.md):
      Cap...    numeric (Num)
      lower...  symbolic (Sym)
      !         klass (binary target)
      X         ignored
      missing   '?'

## DATASETS

    file          rows    cols  klass!         sensitive    source
    -----------   -----   ----  ------------   -----------  ------
    adult.csv     30162    15   income         sex, race    UCI [6]
    german.csv     1000    21   credit         sex_marital  UCI [1]
    bank.csv      45211    17   y              age          UCI [2]
    compas.csv     6479    10   two_year_recid sex, race    Propublica [4,5]
    meps.csv         --    --   --             race         AHRQ [3] -- gated

## NOTES

    adult.csv     UCI Adult / Census Income. "?" rows dropped (30162
                  of 32561). Target income! in {<=50K, >50K}. Suggested
                  sensitive: sex (Male/Female), race.

    german.csv    UCI Statlog German Credit. 1000 rows, attribute codes
                  A11..A201 unchanged. Target credit! in {good, bad}
                  (recoded from 1/2). Sensitive embedded in sex_marital
                  (A91..A95).

    bank.csv      UCI Bank Marketing (bank-full). Target y! in {yes,no}
                  = subscribed to term deposit. Sensitive: age (>=25
                  bucket commonly used).

    compas.csv    ProPublica two-year recidivism. Filtered per
                  ProPublica's standard rules: days_b_screening_arrest
                  in [-30,30], is_recid != -1, charge_degree != "O",
                  score_text != "N/A". Target two_year_recid! in {0,1}.
                  Sensitive: race (African-American vs others), sex.

    meps.csv      MEPS HC-181 panel. NOT included: AHRQ requires a
                  click-through usage agreement. Download manually from
                  https://meps.ahrq.gov/mepsweb/data_stats/download_data_files_detail.jsp?cboPufNumber=HC-181
                  then convert. AIF360 ships a preprocessing script.

## RECREATE

    python3 -B convert.py    # re-runs raw/ -> *.csv

    Raw sources are in raw/ (UCI archives, ProPublica GitHub). MIT
    license applies to *this packaging*; original datasets keep their
    own terms (UCI = CC BY 4.0; ProPublica = open).

## REFERENCES

    [1] 1994. The German Credit dataset.
        https://archive.ics.uci.edu/ml/datasets/Statlog+(German+Credit+Data)
    [2] 2014. The Bank dataset.
        https://archive.ics.uci.edu/ml/datasets/Bank+Marketing
    [3] 2015. The MEPS dataset.
        https://meps.ahrq.gov/mepsweb/data_stats/download_data_files_detail.jsp?cboPufNumber=HC-181
    [4] 2016. The COMPAS dataset.
        https://github.com/propublica/compas-analysis
    [5] 2016. Machine bias.
        https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing
    [6] 2017. The Adult Census Income dataset.
        https://archive.ics.uci.edu/ml/datasets/adult

## SEE ALSO

    https://github.com/aiez/fft      trees + ensembles using these CSVs
    https://github.com/aiez/optimiz  optimization CSVs (auto93, config_SS-N, ...)
    https://github.com/aiez/konfig   shared Makefile, bashrc, nvim, tmux

## LICENSE

    MIT.  https://choosealicense.com/licenses/mit/
    (c) 2025 Tim Menzies.

## AUTHOR

    Tim Menzies <timm@ieee.org>
