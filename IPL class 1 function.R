#Set the working directory
setwd("C:/Users/admin/Desktop/IPL")
#Get the working directory
getwd()



#Install the required package'yorkr'
library(yorkr)
rm(list=ls())

#Convert and save all yaml files to dataframes with source directory & target directory
convertAllYaml2RDataframesT20("C:/Users/admin/Desktop/IPL","C:/Users/admin/Desktop/IPL")

#Load match data as dataframe

load("Kolkata Knight Riders-Mumbai Indians-2014-05-14.RData")
kkr_mi <- overs

#Batting team score with bating batsman name 
teamBattingScorecardMatch(kkr_mi,'Mumbai Indians')
teamBattingScorecardMatch(kkr_mi,'Kolkata Knight Riders')

#Plot to show batting team partnership in the match
teamBatsmenPartnershipMatch(kkr_mi,'Mumbai Indians','Kolkata Knight Riders')

#Plot to show performance of batsmen vs bowlers
teamBatsmenVsBowlersMatch(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')

#Bowling scorecard : number of overs bowled, maidens, runs conceded and wickets taken for each match
teamBowlingScorecardMatch(kkr_mi,'Kolkata Knight Riders')
teamBowlingScorecardMatch(kkr_mi,'Mumbai Indians')

#Kind of wicket taken by the bowler (caught, bowled, lbw etc.)
teamBowlingWicketKindMatch(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')

#Plot to show wickets taken and the runs conceded by the bowler
teamBowlingWicketRunsMatch(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')

#Plot to show wickets taken by bowler along with batsman's name
teamBowlingWicketMatch(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')

#Plot to display performance of different bowlers against the batting opposition.
teamBowlersVsBatsmenMatch(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')

#Match worm graph:It is graph showing the cumulative runs & fall of wickets of a running match
matchWormGraph(kkr_mi,'Kolkata Knight Riders','Mumbai Indians')
