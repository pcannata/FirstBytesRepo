install.packages("devtools")
library("devtools", lib.loc="/Library/Frameworks/R.framework/Versions/3.0/Resources/library")
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')
# Make 06 Sldify the current Working Directory
library(slidify)
author("mydeck")
# cd to mydeck
# Edit index.Rmd
# Knit index.Rmd