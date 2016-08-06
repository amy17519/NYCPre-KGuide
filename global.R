library(shiny)
library(leaflet)
library(dplyr)
library(googleVis)

kid <- read.csv("https://raw.githubusercontent.com/amy17519/NYCPre-KGuide/master/kid.csv",
                stringsAsFactors=FALSE)
colnames(kid)[c(2,4,5,6,11,14,16)] <- c("Type","Name",'Phone',
                                        'Address','Zipcode','Meal',
                                        'Extended Day Care')
kidtable<-kid[,-c(1,7,8,9,10)]
pal = colorFactor( c('#C47027','#1D3557' ,'#db154e'), kid$Type)

boroughkid <- read.csv("https://raw.githubusercontent.com/amy17519/NYCPre-KGuide/master/boroughkid.csv",
                       stringsAsFactors=FALSE)
colnames(boroughkid)<-c("","Borough","Seat Avalibility","2014 Estimate","2010 Census")
