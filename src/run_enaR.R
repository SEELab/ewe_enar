# run_enaR.r
# script to execute "full" ecological network analysis with enaR
# --_
# input - score file
# output - enaR analysis stored as CSV file
# ---
# ========================================================================

## install.packages("enaR")
## update.packages()

# prepare
rm(list=ls())
library(enaR)

# file.name is the name of plain text SCOR formatted ENA model, to be provided by the calling tool
                                        #file.name="%SCORFILE%"
                                        #Unix/Linux
                                        #file.name <- '../data/Deepfish output for Stuart.dat'
                                        #windows
file.name <- '..\data\Deepfish output for Stuart.dat'

# load model
m <- read.scor(file.name)          # read in model
print(m)
print('Done reading model.')

## ### balancing
## m <- balance(m)                    # balances model if needed

## # perform analyses
## All <- list()
## All$A <- enaStructure(m)           # structure analysis
## All$F <- enaFlow(m)                # flow analysis
## All$S <- enaStorage(m)
## All$U <- enaUtility(m,eigen.check=FALSE)
## All$C <- enaControl(m)
## All$mti <- enaMTI(m,eigen.check=FALSE)
## All$E <- enaEnviron(m)

## # writes output to a txt file.  
## zz <- file("tmp.txt",open="wt")
## sink(zz)
## show(All)
## sink()
## unlink(zz)
