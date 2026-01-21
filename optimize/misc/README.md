| DATASET | Category | 
| ----------- | ----------- |
| auto93 | A |
| Car price cleaned | A |
| Wine quality | A |



# Details

These three datasets are not connected with software engineering tasks, instead they optimize for a car performance in the case of auto93, the quality of a wine in Wine Quality and different performance metrics for cars on Car price cleaned . They serve as debug purposes. While all other datasets require some specialized SE domain knowledge. These two allow SE newcomers to apply their general knowledge while implementing and fixing their algorithms.



## Car_price_cleaned Dataset
- **Rows**: 205 vehicle records
- **X columns**: 38 features (car specifications, dimensions, engine details, performance metrics)
- **Y columns**: 5 (FUELTYPE-, ASPIRATION+, DOORNUMBER+, PRICE+, DRIVEWHEEL+)
- **Description**: Automotive dataset for car price prediction and feature analysis. Contains vehicle specifications (dimensions, weight, body type), engine characteristics (size, cylinders, compression ratio), performance metrics (horsepower, peak RPM, fuel economy), brand information, and derived features (power-to-weight ratio, squared measurements) to predict and optimize fuel type, aspiration, door configuration, drive wheel setup, and ultimately, vehicle pricing.

## Wine_quality Dataset
This data have been obtained from [Cortez et al., 2009](http://www3.dsi.uminho.pt/pcortez/wine/)
- **Rows**: 1,599 wine quality records
- **X Columns**: 10 features (Fixedacidity, Volatileacidity, Citricacid, Residualsugar, CL, FreeSO2, TotalS02, Density, PH, Sulphates)
- **Y COlumns**: 2 (Alcohol-, Quality+)

### Features Include:
| Attribute | Full Name | Description | Units | 
| :--- | :--- | :--- | :--- | 
| Fixedacitity | **Fixed acidity** | Most acids involved with wine or fixed or nonvolatile (do not evaporate readily). | g(tartaric acid)/dm³ |
| Volatileacidity | **Volatile acidity** | The amount of acetic acid in wine, which at too high of levels can lead to an unpleasant, vinegar taste. | g(acetic acid)/dm³ |
| Citricacid | **Citric acid** | Found in small quantities, citric acid can add 'freshness' and flavor to wines. | g/dm³ |
| Residualsugar | **Residual sugar** | The amount of sugar remaining after fermentation stops, it's rare to find wines with less than 1 gram/liter. | g/dm³ |
| CL | **Chlorides** | The amount of salt in the wine. | g(sodium chloride)/dm³ |
| FreeSO2 | **Free SO2** | The free form of SO2 exists in equilibrium between molecular SO2 (as a dissolved gas) and bisulfite ion; it prevents microbial growth and the oxidation of wine. | mg/dm³ |
| TotalS02 | **Total SO2** | Amount of free and bound forms of S02; in low concentrations, SO2 is mostly undetectable in wine, but at free SO2 concentrations over 50 ppm, SO2 becomes evident in the nose and taste of wine. | mg/dm³ |
| Density | **Density** | The density of the wine is close to that of water depending on the percent alcohol and sugar content. | g/cm³ |
| PH | **pH** | Describes how acidic or basic a wine is on a scale from 0 (very acidic) to 14 (very basic); most wines are between 3-4 on the pH scale. | - |
| Sulphates | **Sulphates** | A wine additive which can contribute to sulfur dioxide gas (SO2) levels, which acts as an antimicrobial and antioxidant. | g(potassium sulphate)/dm³ |
| Alcohol- | **Alcohol** | The percent alcohol content of the wine. | vol.% | 
| Quality+ | **Quality** | Output variable (based on sensory data, score between 0 and 10). | Score (0-10) | 
