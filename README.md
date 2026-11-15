# The Environmental Kuznets Curve (EKC) in Chad (1970–2024)

**Student:** Şükrettin Efe Aydın  
**Student ID:** 137423018  
**Country:** Republic of Chad (`TCD`)  
**Period:** 1970–2024 (N = 55)

## Data Source
World Bank — World Development Indicators (WDI):
- **CO2 emissions excluding LULUCF per capita (t CO2e/capita):** `EN.GHG.CO2.PC.CE.AR5`
- **GDP per capita (constant 2015 US$):** `NY.GDP.PCAP.KD`

## Econometric Model
ln(CO2_t) = beta_0 + beta_1 * ln(GDP_t) + beta_2 * [ln(GDP_t)]^2 + epsilon_t

## Summary of Empirical Results
- **Intercept (beta_0):** 70.3679 (SE = 63.5327, t = 1.108, p = 0.273)
- **ln(GDP per capita) (beta_1):** -24.2926 (SE = 19.3602, t = -1.255, p = 0.215)
- **[ln(GDP per capita)]^2 (beta_2):** 1.9949 (SE = 1.4734, t = 1.354, p = 0.182)
- **R-squared:** 0.5156 | **Adjusted R-squared:** 0.4969
- **F-statistic:** 27.67 on 2 and 52 DF (p-value = 6.550e-09)
- **Conclusion:** Because beta_1 < 0, beta_2 > 0, and both income coefficients are statistically insignificant at the 5% level, the Environmental Kuznets Curve (EKC) hypothesis **does not hold** for Chad over 1970–2024.
