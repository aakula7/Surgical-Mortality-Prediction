Codes09 <- read.csv('Base_09_Codes.csv')

View(Codes09)

library(comorbidity)

install.packages("backports")

library(backports)

charlson9 <- comorbidity(x = Codes09, id = "RECORD_ID", code = "CODE", score = "charlson", icd = "icd9", assign0 = FALSE)

View(charlson9)

elixhauser9 <- comorbidity(x = Codes09, id = "RECORD_ID", code = "CODE", score = "elixhauser", icd = "icd9", assign0 = FALSE)

View(elixhauser9)

write.csv(charlson9, 'Charlson_09.csv')

write.csv(elixhauser9, 'Elixhauser_09.csv')