Codes06 <- read.csv('Base_06_Codes.csv')

View(Codes06)

library(comorbidity)

install.packages("backports")

library(backports)

charlson9 <- comorbidity(x = Codes06, id = "RECORD_ID", code = "CODE", score = "charlson", icd = "icd9", assign0 = FALSE)

View(charlson9)

elixhauser9 <- comorbidity(x = Codes06, id = "RECORD_ID", code = "CODE", score = "elixhauser", icd = "icd9", assign0 = FALSE)

View(elixhauser9)

charlsonColKeep <- c('RECORD_ID', 'score', 'index', 'wscore', 'windex')

charlson9New <- charlson9[charlsonColKeep]

elixhauserColKeep <- c('RECORD_ID', 'score', 'index', 'wscore_ahrq', 'wscore_vw', 'windex_ahrq', 'windex_vw')

elixhauser9New <- elixhauser9[elixhauserColKeep]

View(charlson9New)

View(elixhauser9New)

write.csv(charlson9New, 'Charlson_06.csv')

write.csv(elixhauser9New, 'Elixhauser_06.csv')