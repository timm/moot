# Dataset Descriptions


## all_players.csv, FIFA Dataset Description

This dataset contains information about football (soccer) players, likely from a FIFA video game or similar source.

### Dataset Overview
- **Rows**: 17,737 player records
- **X Columns**: 55 attributes per player
- **Y Columns**: 2 target variables ("Strength+" and "Penalties+")

### Features Include:
- **Basic Information**: Rank, Name, Overall Rating (OVR), Position, Age, Nation, Team, League
- **Main Attributes**: Pace (PAC), Shooting (SHO), Passing (PAS), Dribbling (DRI), Defense (DEF), Physical (PHY)
- **Detailed Skills**: 
  - Speed metrics (Acceleration, Sprint Speed)
  - Shooting abilities (Positioning, Finishing, Shot Power, Long Shots, Volleys)
  - Passing abilities (Vision, Crossing, Free Kick Accuracy, Short/Long Passing, Curve)
  - Dribbling abilities (Dribbling, Agility, Balance, Reactions, Ball Control, Composure)
  - Defensive abilities (Interceptions, Heading, Defensive Awareness, Tackling)
  - Physical attributes (Jumping, Stamina, Aggression)
- **Player Characteristics**: Weak foot rating, Skill moves rating, Preferred foot, Height, Weight
- **Goalkeeper-specific**: GK Diving, GK Handling, GK Kicking, GK Positioning, GK Reflexes
- **Other**: Play style, Alternative positions, URL

The target variables "Strength+" and "Penalties+" likely represent either enhanced versions of these attributes or composite scores.

##  WA_Fn-UseC_-HR-Employee-Attrition.csv
- **Rows**: 1,470
- **X columns**: 32 variables including demographic information, job characteristics, satisfaction metrics, etc. (features include Age, BusinessTravel, DailyRate, Department, DistanceFromHome, Education, etc.)
- **Y column**: 3 target (Y) variables measure employee tenure in different contexts(YearsAtCompany, YearsInCurrentRole, YearsWithCurrManager). These variables related to each other and represent different aspects of employee tenure and stability.


- **Description**: Human resources dataset focusing on employee attrition. Contains demographic information, job-related variables, satisfaction metrics, and work history to analyze factors that may contribute to employees leaving the company.

The data would be useful for HR to:
- Predict which employees might be at risk of leaving
- Understand optimal timelines for role changes and promotions
- Identify patterns in manager assignments that lead to better retention

## student_dropout.csv
- **Rows**: 649
- **X columns**: 33 features (school, gender, AGE, address, family_size, etc.)
- **Y column**: 1 (DROPPED_OUT+: Boolean True/False)
- **Description**: Educational dataset for predicting student dropout. Contains demographic information, family background, academic performance (grades), study habits, alcohol consumption, and social factors that may influence whether a student drops out of school.

## player_statistics_cleaned_final.csv
- **Rows**: 81
- **X columns**: 26 features (TeamName, PlayerName, Position, Games, Win rate, etc.)
- **Y column**: 1 (KP+)
- **Description**: Esports player statistics dataset from  League of Legends. Contains performance metrics such as kills, deaths, assists, gold per minute, damage output, vision control, and early game advantages. The target variable "KP+" represents kill participation percentage, a key performance indicator measuring a player's involvement in team fights.