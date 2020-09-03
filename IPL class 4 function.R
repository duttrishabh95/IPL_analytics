#Set the working directory
setwd("C:/Users/admin/Desktop/IPL")
#Get the working directory
getwd()

#Install the required package'yorkr'
library(yorkr)
library(gridExtra)
library(rpart.plot)
library(dplyr)
library(ggplot2)
rm(list=ls())

#Get batting details of the IPL team in each match 
mi_details <- getTeamBattingDetails("Mumbai Indians",dir=".",save=TRUE)

#Data of individual batting record for the specified batsman of the team
Rahane <- getBatsmanDetails(team="Mumbai Indians",name="AM Rahane",dir=".")
Nayar <- getBatsmanDetails(team="Mumbai Indians",name="AM Nayar",dir=".")
Symonds <- getBatsmanDetails(team="Mumbai Indians",name="A Symonds",dir=".")
Blizzard <- getBatsmanDetails(team="Mumbai Indians",name="AC Blizzard",dir=".")

#Plot to show strike rate of a batsman i.e. runs vs delivers in matches
p1 <-batsmanRunsVsDeliveries(Rahane, "AM Rahane")
p2 <-batsmanRunsVsDeliveries(Nayar, "AM Nayar")
p3 <-batsmanRunsVsDeliveries(Symonds, "A Symonds")
p4 <-batsmanRunsVsDeliveries(Blizzard, "AC Blizzard")
grid.arrange(p1,p2,p3,p4, ncol=2)

#Plot to show runs made by a batsman from fours & sixes
Rahane46 <- select(Rahane,batsman,ballsPlayed,fours,sixes,runs)
p1 <-batsmanFoursSixes(Rahane46, "AM Rahane")
Nayar46 <- select(Nayar,batsman,ballsPlayed,fours,sixes,runs)
p2 <-batsmanFoursSixes(Nayar46, "AM Nayar")
Symonds46 <- select(Symonds,batsman,ballsPlayed,fours,sixes,runs)
p3 <-batsmanFoursSixes(Symonds46, "A Symonds")
Blizzard46 <- select(Blizzard,batsman,ballsPlayed,fours,sixes,runs)
p4 <-batsmanFoursSixes(Blizzard46, "AC Blizzard")

grid.arrange(p1,p2,p3,p4, ncol=2)

#Plot to show type of dismissal for each batsman 
p1 <-batsmanDismissals(Rahane, "AM Rahane")
p2 <-batsmanDismissals(Nayar,"AM Nayar")
grid.arrange(p1,p2, ncol=2)

#Plot to show runs vs strike rate in IPL matches
p1 <-batsmanRunsVsStrikeRate(Rahane, "AM Rahane")
p2 <-batsmanRunsVsStrikeRate(Nayar,"AM Nayar")
grid.arrange(p1,p2, ncol=2)

#Plot to show batsman moving averge in all matches
p1 <-batsmanMovingAverage(Rahane, "AM Rahane")
p2 <-batsmanMovingAverage(Nayar,"AM Nayar")
grid.arrange(p1,p2, ncol=2)

#Plot to show cumulative average of a bastman
p1 <-batsmanCumulativeAverageRuns(Rahane, "AM Rahane")
p2 <-batsmanCumulativeAverageRuns(Nayar,"AM Nayar")
grid.arrange(p1,p2, ncol=2)

#Plot to show cumulative average strike rate of a batsman 
p1 <-batsmanCumulativeStrikeRate(Rahane, "AM Rahane")
p2 <-batsmanCumulativeStrikeRate(Nayar,"AM Nayar")
grid.arrange(p1,p2, ncol=2)

#Plot to show the performance of the batsman against opposing team
batsmanRunsAgainstOpposition(Rahane, "AM Rahane")

#Plot to show performances of the batsmen at different grounds
batsmanRunsVenue(Rahane, "AM Rahane")

#Plot to show prediction of number of runs to deliveries
par(mfrow=c(1,3))
par(mar=c(4,4,2,2))
batsmanRunsPredict(Rahane, "AM Rahane")
batsmanRunsPredict(Nayar,"AM Nayar")
batsmanRunsPredict(Symonds, "A Symonds")

#Bowler functions

#Get bowling details of the IPL team in each match 
mi_bowling <- getTeamBowlingDetails("Mumbai Indians",dir=".",save=TRUE)

#Data of individual bowling record for the specified bowler of the team
Nehra <- getBowlerWicketDetails(team="Mumbai Indians",name="A Nehra",dir=".")
Harbhajan <- getBowlerWicketDetails(team="Mumbai Indians",name="Harbhajan Singh",dir=".")

#Bowler Mean Economy rate in matches
p1<-bowlerMeanEconomyRate(Nehra,"A Nehra")
p2<-bowlerMeanEconomyRate(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show average runs conceded by the bowler
p1<-bowlerMeanRunsConceded(Nehra,"A Nehra")
p2<-bowlerMeanRunsConceded(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show bowler moving average 
p1<-bowlerMovingAverage(Nehra,"A Nehra")
p2<-bowlerMovingAverage(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show bowler's cumulative average wickets 
p1<-bowlerCumulativeAvgWickets(Nehra,"A Nehra")
p2<-bowlerCumulativeAvgWickets(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show bowler's cumulative economy rate 
p1<-bowlerCumulativeAvgEconRate(Nehra,"A Nehra")
p2<-bowlerCumulativeAvgEconRate(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show average wickets versus number of overs
p1<-bowlerWicketPlot(Nehra,"A Nehra")
p2<-bowlerWicketPlot(Harbhajan, "Harbhajan Singh")
grid.arrange(p1,p2, ncol=2)

#Plot to show performance of bowler against opposing team
bowlerWicketsAgainstOpposition(Nehra,"A Nehra")

#Plot to show the performance of bowler at various cricket grounds
bowlerWicketsVenue(Nehra,"A Nehra")

#Data of no. of deliveries & wickets taken
Nehra1 <- getDeliveryWickets(team="Mumbai Indians",dir=".",name="A Nehra",save=FALSE)
harbhajan1 <- getDeliveryWickets(team="Mumbai Indians",dir=".",name="Harbhajan Singh",save=FALSE)

#Plot to show prediction of number of deliveries to wickets in IPL
par(mfrow=c(1,2))
par(mar=c(4,4,2,2))

bowlerWktsPredict(Nehra1,"A Nehra")
bowlerWktsPredict(harbhajan1, "Harbhajan Singh")

