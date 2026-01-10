[![DOI](https://zenodo.org/badge/181570338.svg)](https://doi.org/10.5281/zenodo.17354082)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub issues](https://img.shields.io/github/issues/timm/moot)
![GitHub pull requests](https://img.shields.io/github/issues-pr/timm/moot) 
![GitHub stars](https://img.shields.io/github/stars/timm/moot?style=social)
![GitHub forks](https://img.shields.io/github/forks/timm/moot?style=social)

# Moot: A repository of many Multi-objective optimization tasks

MOOT (**M**ulti **O**bjective **O**ptimization **T**asks) is a curated repository of real-world multi-objective optimization tasks drawn from recent software engineering and systems research. These tasks span software configuration, cloud and systems tuning, project health, process modeling, and hyperparameter optimization, among others.

The goal of MOOT is to provide a reusable, extensible benchmark suite that enables:
- Rigorous comparison of optimization algorithms across many tasks.
- Replication and extension of prior empirical studies in search-based software engineering.
- Rapid exploration of new ideas in optimization, meta-learning, and automated software analytics.

## MOOT at a glance


| # Datasets | Dataset Type | File Names | Primary Objective | x/y | # Rows | Cited By |
|------------|--------------|------------|-------------------|-----|--------|----------|
| 25 | Specific Software Configurations | SS-A to SS-X, billing10k | Optimize software system settings | 3-88/2-3 | 197–86,059 | [1,2,3,4,5,6,7,8,9,10] |
| 12 | PromiseTune Software Configurations | 7z, BDBC, HSQLDB, LLVM, PostgreSQL, dconvert, deeparch, exastencils, javagc, redis, storm, x264 | Software performance optimization | 9-35/1 | 864-166,975 | [11,12,13,14,15] |
| 1 | Cloud | HSMGP num | Hazardous Software Management Program data | 14/1 | 3,457 | [1,2,3,4,5,12] |
| 1 | Cloud | Apache AllMeasurements | Apache server performance optimization | 9/1 | 192 | [1,2,3,4,5,12] |
| 1 | Cloud | SQL AllMeasurements | SQL database tuning | 39/1 | 4,654 | [1,2,3,4,5] |
| 1 | Cloud | X264 AllMeasurements | Video encoding optimization | 16/1 | 1,153 | [1,2,3,4,5] |
| 7 | Cloud | (rs—sol—wc)* | Misc configuration tasks | 3-6/1 | 196–3,840 | [1,2,3,4,5,6,7] |
| 35 | Software Project Health | Health-ClosedIssues, -PRs, -Commits | Predict project health and developer activity | 5/2-3 | 10,001 | [1,2,3,4,5,6,20] |
| 3 | Scrum | Scrum1k, Scrum10k, Scrum100k | Configurations of the scrum feature model | 124/3 | 1,001–100,001 | [1,2,4,6] |
| 8 | Feature Models | FFM-*, FM-* | Optimize number of variables, constraints and Clause/Constraint ratio | 128-1,044/3 | 10,001 | [1,2,4,6] |
| 1 | Software Process Model | nasa93dem | Optimize effort, defects, time and LOC | 24/3 | 93 | [2,5,6,20] |
| 1 | Software Process Model | COC1000 | Optimize risk, effort, analyst experience, etc | 20/5 | 1,001 | [1,2,5,20,21] |
| 4 | Software Process Model | POM3 (A–D) | Balancing idle rates, completion rates and cost | 9/3 | 501–20,001 | [2,4,5,6,20] |
| 4 | Software Process Model | XOMO (Flight, Ground, OSP) | Optimizing risk, effort, defects, and time | 27/4 | 10,001 | [2,4,5,6,20,21] |
| 3 | Miscellaneous | auto93, Car_price, Wine_quality | Miscellaneous | 5-38/2-5 | 205–1,600 | [1,2,3,4,5,6,20] |
| 4 | Behavioral | all_players, student_dropout, HR-employeeAttrition, player_statistics | Analyze and predict behavioral patterns | 26-55/1-3 | 82–17,738 | [29,31,32,33] |
| 4 | Financial | BankChurners, home_data, Loan, Telco-Churn | Financial analysis and prediction | 19-77/2-5 | 1,460–20,000 | [34,35,36,37] |
| 3 | Human Health Data | COVID19, Life_Expectancy, hospital_Readmissions | Health-related analysis and prediction | 20-64/1-3 | 2,938–25,000 | [38,39,40] |
| 2 | Reinforcement Learning | A2C_Acrobot, A2C_CartPole | Reinforcement learning tasks | 9-11/3-4 | 224–318 | — |
| 5 | Sales | accessories, dress-up, Marketing_Analytics, socks, wallpaper | Sales analysis and prediction | 14-31/1-8 | 247–2,206 | [30,41,42] |
| 2 | Software testing | test120, test600 | Optimize the class | 9/1 | 5,161 | — |
| **127** | **Total** | | | | | |

**Note:** "x/y" denotes the number of independent and dependent attributes. All citations are detailed in [docs/cited_by.md](docs/cited_by.md).

## Team

MOOT is a collaborative effort between researchers at [North Carolina State University](https://www.csc.ncsu.edu) and the [University of Birmingham](https://www.birmingham.ac.uk/schools/computer-science) led by [Dr. Tim Menzies](https://timm.fyi) and [Dr. Tao Chen](https://www.birmingham.ac.uk/staff/profiles/computer-science/tao-chen) to curate and maintain a large, open repository of multi-objective optimization tasks for software engineering and related domains. Building on prior experience with large-scale empirical resources such as the [PROMISE repository](https://openscience.us/repo/) and extensive work in search-based software engineering and optimization, the MOOT team offers a robust foundation for rigorous, reproducible research.

## Citing MOOT
If you use MOOT in your research, please cite the following paper:
```
Menzies, T., Chen, T., Ye, Y., Ganguly, 
K. K., Rayegan, A., Srinivasan, S., & Lustosa, A. (2025). 
MOOT: a Repository of Many Multi-Objective Optimization Tasks. 
arXiv:2511.16882
```

```bibtex
@misc{menzies2025mootrepositorymultiobjectiveoptimization,
      title={MOOT: a Repository of Many Multi-Objective Optimization Tasks}, 
      author={Tim Menzies and Tao Chen and Yulong Ye and Kishan Kumar Ganguly 
              and Amirali Rayegan and Srinath Srinivasan and Andre Lustosa},
      year={2025},
      eprint={2511.16882},
      archivePrefix={arXiv},
      primaryClass={cs.SE},
      url={https://arxiv.org/abs/2511.16882}, 
}

```

## Key Resources

- MOOT GitHub repository: <https://github.com/timm/moot>  
- MOOT paper: *“MOOT: a Repository of Many Multi-Objective Optimization Tasks”* – <https://arxiv.org/abs/2511.16882>  
- Tim Menzies’ homepage: <https://timm.fyi>  
- “The Case for Compact AI” (Communications of the ACM article discussing compact AI and related ideas): <https://cacm.acm.org/opinion/the-case-for-compact-ai/>

Moot is such a good name for datasets to be used to assess different algorithms. Its definition is 

>   (noun) a mock trial set up to examine a hypothetical case as an academic exercise.  "the object of a moot is to provide practice in developing an argument"
