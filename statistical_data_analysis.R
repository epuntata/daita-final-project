library(tidyr)
library(dplyr)
library(modelsummary)
library(ggplot2)
library(readr)
library(readxl)
library(stargazer)


result <- read_csv("C:/Users/hp/files/سطح المكتب/result.csv")
View(result)
result

model_tv <- lm(`tv fatturato` ~ `budget tv`, data = result)
summary_model_tv <- summary(model_tv)
print(summary_model_tv)


model_Newspaper <- lm(`newspaper fatturato` ~ `budget newspaper`, data = result)
summary_model_Newspaper <- summary(model_Newspaper)
print(summary_model_Newspaper)

result$Actress == result$actor

model_Radio <- lm(`radio fatturato` ~ `budget radio`, data = result)
summary_model_Radio <- summary(model_Radio)
print(summary_model_Radio)

model_social <- lm(`social fatturato` ~ `budget social`, data = result)
summary_model_social <- summary(model_social)
print(summary_model_social)

df_st <- list(summary_model_tv, summary_model_Radio, summary_model_Newspaper, summary_model_social)
stargazer(model_tv, model_Radio, model_Newspaper, model_social,
  type = "latex"
)
model_totale <- lm(`fatturato totale` ~ `budget newspaper` + `budget radio` + `budget social` + `budget tv`, data = result)
summary_model_totale <- summary(model_totale)
print(summary_model_totale)
stargazer(model_totale, type = "latex")

model_totale_1 <- lm(`fatturato totale` ~ `budget newspaper` * `budget radio` * `budget social` * `budget tv`, data = result)
summary_model_totale_1 <- summary(model_totale_1)
print(summary_model_totale_1)

result$radio_ratio <- (result$`radio fatturato` / result$`budget radio`) *100
result$social_ratio <- (result$`social fatturato` / result$`budget social`) *100
result$newspaper_ratio <- (result$`newspaper fatturato` / result$`budget newspaper`) *100
result$tv_ratio <- (result$`tv fatturato` / result$`budget tv`) *100

ratios <- c(
  median((result$`radio fatturato` / result$`budget radio`) * 100),
  median((result$`social fatturato` / result$`budget social`) * 100),
  median((result$`newspaper fatturato` / result$`budget newspaper`) * 100),
  median((result$`tv fatturato` / result$`budget tv`) * 100)
)

highest_median_index <- which.max(ratios)


if (highest_median_index == 1) {
  print("radio_ratio has the highest median")
} else if (highest_median_index == 2) {
  print("social_ratio has the highest median")
} else if (highest_median_index == 3) {
  print("newspaper_ratio has the highest median")
} else {
  print("tv_ratio has the highest median")
}

ratios_df <- data.frame(
  gruppo = rep(c("Radio", "Social", "Newspaper", "TV"), each = nrow(result)),
  rapporto = c((result$`radio fatturato` / result$`budget radio`) * 100,
            (result$`social fatturato` / result$`budget social`) * 100,
            (result$`newspaper fatturato` / result$`budget newspaper`) * 100,
            (result$`tv fatturato` / result$`budget tv`) * 100)
)

# Plot the data using ggplot
ggplot(ratios_df, aes(x = 1:nrow(ratios_df), y = rapporto, color = gruppo)) +
  geom_line() +
  labs(x = "Gruppo", y = "Rapporto (%)", title = "rapporto tra Fatturato e Budget") +
  theme_minimal() +
  scale_color_manual(values = c( "orange", "lightgreen", "blue", "purple"),
                     labels = c("Radio", "Social", "Newspaper", "TV"))
ggplot(result, aes(x = `budget radio`, y = `radio fatturato`)) +
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(result, aes(x = `budget social`, y = `social fatturato`)) +
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(result, aes(x = `budget newspaper`, y = `newspaper fatturato`)) +
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(result, aes(x = `budget tv`, y = `tv fatturato`)) +
  geom_point() + 
  geom_smooth(method = "lm")
