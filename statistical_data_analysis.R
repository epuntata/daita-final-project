library(tidyr)
library(dplyr)
library(modelsummary)
library(ggplot2)
library(readr)
library(readxl)
library(stargazer)


result <- read_csv("C:/Users/hp/files/سطح المكتب/result.csv")
View(result)


model_tv <- lm(`budget tv` ~ `tv fatturato`, data = result)
summary_model_tv <- summary(model_tv)
print(summary_model_tv)


model_Newspaper <- lm(`budget newspaper` ~ `newspaper fatturato`, data = result)
summary_model_Newspaper <- summary(model_Newspaper)
print(summary_model_Newspaper)

result$Actress == result$actor

model_Radio <- lm(`budget radio` ~ `radio fatturato`, data = result)
summary_model_Radio <- summary(model_Radio)
print(summary_model_Radio)

model_social <- lm(`budget social` ~ `social fatturato`, data = result)
summary_model_social <- summary(model_social)
print(summary_model_social)


df_st_tv <- list(model_tv, model_tv2, model_tv3)
stargazer(
  df_st_tv,
  type = "latex"
)
df_st <- list(summary_model_tv, summary_model_Radio, summary_model_Newspaper, summary_model_social)
stargazer(model_tv, model_Radio, model_Newspaper, model_social,
  type = "latex"
)
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
