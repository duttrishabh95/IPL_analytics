#Set the working directory
setwd("C:/Users/admin/Desktop/IPL")
#Get the working directory
getwd()

#Install the required package'yorkr'
library(yorkr)
rm(list=ls())

#Get data for all T20 matches between 2 teams
matches <- getAllMatchesBetweenTeams("Kolkata Knight Riders","Mumbai Indians",dir=".")
dim(matches)

#Partnership in all matches with opposing IPL team where report can be brief or detailed depending on the parameter ‘report’.
teamBatsmenPartnershiOppnAllMatches(matches,'Kolkata Knight Riders',report="summary")

teamBatsmenPartnershiOppnAllMatches(matches,'Kolkata Knight Riders',report="detailed")

#Interactive plot for the partnerships of players
teamBatsmenPartnershipOppnAllMatchesChart(matches,'Kolkata Knight Riders',"Mumbai Indians")

#Plot to see how each of the top batsmen of the teams fared against the opposition bowlers
teamBatsmenVsBowlersOppnAllMatches(matches,"Mumbai Indians","Kolkata Knight Riders")

#overall performances of the IPL team’s batsmen against the opposition
teamBattingScorecardOppnAllMatches(matches,main="Mumbai Indians",opposition="Kolkata Knight Riders")

#Performance of top IPL bowlers of the respective teams in the matches against the opposition
teamBowlingPerfOppnAllMatches(matches,"Mumbai Indians","Kolkata Knight Riders")

#Plot to show wickets taken by bowlers against opposition
teamBowlersWicketsOppnAllMatches(matches,"Mumbai Indians","Kolkata Knight Riders")

#Plot to show how the top 5 IPL bowlers fared against the batsmen
teamBowlersVsBatsmenOppnAllMatches(matches,'Mumbai Indians',"Kolkata Knight Riders",top=5)

#Plot to show wicket kind taken by the bowler of a team i.e. caught,bowled,lbw etc
teamBowlersWicketKindOppnAllMatches(matches,"Mumbai Indians","Kolkata Knight Riders",plot=TRUE)

#Plot bowler’s no.of wicket taken and runs conceded in all matches
teamBowlersWicketRunsOppnAllMatches(matches,"Mumbai Indians","Kolkata Knight Riders")

#Plot to show wins vs losses between teams in IPL 
plotWinLossBetweenTeams("Mumbai Indians","Kolkata Knight Riders","C:/Users/pranay/Desktop/IPL")

