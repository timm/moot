## Customer_Marketing Dataset
- **Source**: [iFood CRM Data Analyst Case](https://www.kaggle.com/datasets/jackdaoud/marketing-data)
- **Rows**: 2205 records
- **X columns**: 31 features (income, household composition, product spending, campaign acceptance, demographics, education level)
- **Y columns**: 8 (purchase behavior metrics, customer engagement, revenue metrics)
- **Description**: Comprehensive customer marketing dataset tracking consumer behavior and campaign effectiveness. Contains socioeconomic data (income, age), household information (children demographics), purchasing patterns across product categories (wine, fruits, meat, fish, sweets, gold), campaign response metrics, customer segmentation variables (marital status, education level), and engagement indicators. This dataset enables analysis of purchasing behavior, campaign effectiveness, customer lifetime value, and development of targeted marketing strategies to optimize revenue and customer retention.

| Feature | Description |
| --- | --- |
| **AcceptedCmp1** | 1 if customer accepted the offer in the  campaign, 0 otherwise |
| **AcceptedCmp2** | 1 if customer accepted the offer in the  campaign, 0 otherwise |
| **AcceptedCmp3** | 1 if customer accepted the offer in the  campaign, 0 otherwise |
| **AcceptedCmp4** | 1 if customer accepted the offer in the  campaign, 0 otherwise |
| **AcceptedCmp5** | 1 if customer accepted the offer in the  campaign, 0 otherwise |
| **Response (target)** | 1 if customer accepted the offer in the last campaign, 0 otherwise |
| **Complain** | 1 if customer complained in the last 2 years |
| **DtCustomer** | date of customer's enrollment with the company |
| **Education** | customer's level of education |
| **Marital** | customer's marital status |
| **Kidhome** | number of small children in customer's household |
| **Teenhome** | number of teenagers in customer's household |
| **Income** | customer's yearly household income |
| **MntFishProducts** | amount spent on fish products in the last 2 years |
| **MntMeatProducts** | amount spent on meat products in the last 2 years |
| **MntFruits** | amount spent on fruits in the last 2 years |
| **MntSweetProducts** | amount spent on sweet products in the last 2 years |
| **MntWines** | amount spent on wines in the last 2 years |
| **MntGoldProds** | amount spent on gold products in the last 2 years |
| **NumDealsPurchases** | number of purchases made with discount |
| **NumCatalogPurchases** | number of purchases made using catalogue |
| **NumStorePurchases** | number of purchases made directly in stores |
| **NumWebPurchases** | number of purchases made through company's web site |
| **NumWebVisitsMonth** | number of visits to company's web site in the last month |
| **Recency** | number of days since the last purchase |

## Accessories Dataset
- **Rows**: 1121 records
- **X columns**: 14 features (item name, colors, size, availability, style attributes)
- **Y columns**: 2 (Buy-, Sell+)
- **Description**: Animal Crossing game item dataset focusing on wearable accessories. Contains detailed information about in-game clothing items including name, color variations, size, purchase method, seasonal availability, style categories, and equipment compatibility. The dataset enables price optimization analysis for buying and selling virtual items, with the Buy- and Sell+ indicators showing the negative cost of acquisition and positive resale value respectively.

## Dress-up Dataset
- **Rows**: 913 records
- **X columns**: 20 features (item name, variation, crafting status, visual attributes, availability details)
- **Y columns**: 2 (Buy-, Sell+)
- **Description**: Animal Crossing game dataset focusing on clothing and costume items. Contains detailed information about in-game dresses, robes, outfits, and costumes including item variations, color schemes, seasonal availability, style classifications, thematic labels, and item compatibility. The dataset captures the virtual fashion economy with pricing metrics for buying (negative cost) and selling (positive return) items across diverse aesthetics from cute and elegant to cool and gorgeous styles.

## Socks Dataset
- **Rows**: 350 records
- **X columns**: 20 features (item name, variation, crafting status, visual attributes, availability details)
- **Y columns**: 1 (Buy-)
- **Description**: Animal Crossing game dataset focusing on footwear accessories. Contains detailed information about in-game socks and stockings including item variations, color schemes, seasonal availability, style classifications, and compatibility with other items. The dataset tracks purchase pricing (Buy-) with negative values indicating cost to the player, enabling analysis of pricing patterns for this specific category of wearable items within the game's virtual economy.

## Wallpaper Dataset
- **Rows**: 247 records
- **X columns**: 22 features (item name, visual effects, colors, window attributes, design details)
- **Y columns**: 2 (Buy-, Sell+)
- **Description**: Animal Crossing game dataset focusing on interior decoration items. Contains detailed information about in-game wallpapers including visual effects, color schemes, window styles, ceiling types, design concepts, and thematic categorizations. The dataset captures decoration item economics with purchase costs (Buy-) and resale values (Sell+), while also tracking special attributes like seasonal availability, crafting status, and compatibility with home design scoring systems.
