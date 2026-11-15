# Environmental Kuznets Curve (EKC) Analysis for Chad (1970-2024)
# Author: Sukrettin Efe Aydin (Student ID: 137423018)
# Data Source: World Bank World Development Indicators (WDI)

data <- read.csv("chad_ekc_data.csv")

# Step 1: Natural logarithm transformation
data$ln_co2 <- log(data$co2_pc)
data$ln_gdp <- log(data$gdp_pc)
data$ln_gdp_sq <- data$ln_gdp^2

# Step 2: Scatter plots with linear and quadratic regression lines
par(mfrow = c(1, 2))

# Linear regression line
plot(data$ln_gdp, data$ln_co2,
     main = "Environmental Kuznets Curve",
     xlab = "Log GDP per capita",
     ylab = "Log CO2 emissions per capita",
     pch = 19, col = "black")
abline(lm(ln_co2 ~ ln_gdp, data = data), col = "red", lwd = 2)

# Quadratic regression curve
plot(data$ln_gdp, data$ln_co2,
     main = "Environmental Kuznets Curve",
     xlab = "Log GDP per capita",
     ylab = "Log CO2 emissions per capita",
     pch = 19, col = "black")
quad_fit <- lm(ln_co2 ~ ln_gdp + ln_gdp_sq, data = data)
x_seq <- seq(min(data$ln_gdp), max(data$ln_gdp), length.out = 200)
lines(x_seq, predict(quad_fit, newdata = data.frame(ln_gdp = x_seq, ln_gdp_sq = x_seq^2)),
      col = "red", lwd = 2)

# Step 3: Quadratic OLS regression summary
summary(quad_fit)
