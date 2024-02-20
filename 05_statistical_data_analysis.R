library(tidyr)
library(dplyr)
library(modelsummary)
library(ggplot2)
library(readr)
library(readxl)
library(stargazer)


result <- read_csv("C:/Users/hp/files/سطح المكتب/result.csv")
View(result)
model_tv <- lm(Sales ~ tv, data = filter(result, Sales < 999))
summary_model_tv <- summary(model_tv)
print(summary_model_tv)
model_tv2 <- lm(Sales ~ tv * actor, data = filter(result, Sales < 999))
summary_model_tv2 <- summary(model_tv2)
print(summary_model_tv2)

model_tv3 <- lm(Sales ~ tv *  Actress, data = filter(result, Sales < 999))
summary_model_tv3 <- summary(model_tv3)
print(summary_model_tv3)


model_Newspaper <- lm(Sales ~ Newspaper, data = filter(result, Sales < 999))
summary_model_Newspaper <- summary(model_Newspaper)
print(summary_model_Newspaper)

result$Actress == result$actor

model_Radio <- lm(Sales ~ Radio, data = filter(result, Sales < 999))
summary_model_Radio <- summary(model_Radio)
print(summary_model_Radio)

model_actor <- lm(Sales ~ actor, data = filter(result, Sales < 999))
summary_model_actor <- summary(model_actor)
print(summary_model_actor)

df_st_tv <- list(model_tv, model_tv2, model_tv3)
stargazer(
  df_st_tv,
  type = "latex"
)
df_st <- list(summary_model_tv, summary_model_Radio, summary_model_Newspaper)
stargazer(model_tv, model_Radio, model_Newspaper,
  type = "latex"
)
ggplot(filter(result, Sales < 999), aes(x = Newspaper, y = Sales)) +
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(filter(result, Sales < 999), aes(x = Radio, y = Sales)) +
  geom_point() + 
  geom_smooth(method = "lm")
ggplot(filter(result, Sales < 999), aes(x = tv, y = Sales)) +
  geom_point() + 
  geom_smooth(method = "lm")

