library(dplyr)
library(tidyr)
data <- read_excel("stem_persistence_update.xlsx")

st <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/State.txt", header = T)

st %>% separate("Murder", c("Murder", "Redrum"), sep = "\\.", remove = FALSE)

data2 <- data %>% separate("graduationsemester", c("gradyear", "gradsem"), sep = 4, remove = FALSE)
data4 <- data2 %>% separate("gradsem", c("gradsem", "gradcampus"), sep = 1, remove = TRUE)
data3 <- data2 %>% unite("graduationsemester", c("gradyear", "gradsem"), sep = "", remove = TRUE)

x <- data4[,34]

i = 0
for(i in x) {
  if(i == 1){
    i = "spring"
  }
  else if(i == 2){
    i = "summer"
  }
  else{
    i = "fall"
  }
  ++i
} 

st %>% spread("Murder", "Frost", fill = NA, convert = FALSE)

# To find the type of element in the vector 
# where graduationsemester is the vector
i = 0
for(i in graduationsemester){
  print(typeof(i))     # print type
}


