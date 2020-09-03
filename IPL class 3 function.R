#Set the working directory
setwd("C:/Users/admin/Desktop/IPL")
#Get the working directory
getwd()

#Install the required package'yorkr'
library(yorkr)
rm(list=ls())

#Get data for all matches against all oppositions for a team
matches <-getAllMatchesAllOpposition("Mumbai Indians",dir=".",save=TRUE)
dim(matches)

#Load data of all the IPL matches of a team against all other IPL teams and combines them into a single dataframe 
load("allMatchesAllOpposition-Mumbai Indians.RData")
mi_Allmatches <- matches

#Scorecard of the top batsmen in the team
teamBattingScorecardAllOppnAllMatches(mi_Allmatches,theTeam="Mumbai Indians")

#Scorecard of best batsmen from the opposition ‘theTeam’ in the ‘matches’
teamBattingScorecardAllOppnAllMatches(matches=mi_Allmatches,theTeam="Kolkata Knight Riders")

#Scorecard of top batting partnerships in the main team in all its matches against all opposing teams,default report parameter is "summary"
teamBatsmenPartnershipAllOppnAllMatches(mi_Allmatches,theTeam='Mumbai Indians')

#When the report parameter is 'detailed' then the detailed break up of the partnership is returned as a data frame
teamBatsmenPartnershipAllOppnAllMatches(mi_Allmatches,theTeam='Mumbai Indians',report="detailed")

#Scorecard of top batsmen partnership of opposite team(to be selected in 'theTeam') against main team with report parameter is "summary"
teamBatsmenPartnershipAllOppnAllMatches(mi_Allmatches,theTeam='Kolkata Knight Riders')

#When the report parameter is 'detailed' then the detailed break up of the partnership is returned as a data frame
teamBatsmenPartnershipAllOppnAllMatches(mi_Allmatches,theTeam='Kolkata Knight Riders',report="detailed")

#Graphical plot of batting partnership against all opposing teams
teamBatsmenPartnershipAllOppnAllMatchesPlot(mi_Allmatches,"Mumbai Indians",main="Mumbai Indians")

#Graphical plot to show best performance of the main team batting partnership against a specified IPL team
teamBatsmenPartnershipAllOppnAllMatchesPlot(mi_Allmatches,"Kolkata Knight Riders",main="Mumbai Indians")

#Scorecard of top performance of main team's batsmen vs bowlers of the opposing teams rank wise
g <- teamBatsmenVsBowlersAllOppnAllMatchesRept(mi_Allmatches,"Mumbai Indians",rank=0)
g

#Scorecard of batsmen who has the best performance against main team bowlers rank wise
m <- teamBatsmenVsBowlersAllOppnAllMatchesRept(matches=mi_Allmatches,theTeam="Mumbai Indians",rank=1,dispRows=25)
m

#Scorecard of performances of the IPL batsman based on the rank chosen against all other IPL team’s bowlers
d <- teamBatsmenVsBowlersAllOppnAllMatchesRept(mi_Allmatches,"Mumbai Indians",rank=1,dispRows=50)
d

#Plot of performances of the IPL batsman based on the rank chosen against all other IPL team’s bowlers
teamBatsmenVsBowlersAllOppnAllMatchesPlot(d)

#Scorecard of top IPL T20 bowlers of selected IPL team
teamBowlingScorecardAllOppnAllMatchesMain(matches=mi_Allmatches,theTeam="Mumbai Indians")

#Scorecard of best bowlers of main team against specified opposite team
teamBowlingScorecardAllOppnAllMatches(mi_Allmatches,'Mumbai Indians')

#Scorecard of best main team bowlers against all other teams
teamBowlersVsBatsmenAllOppnAllMatchesMain(mi_Allmatches,theTeam="Mumbai Indians",rank=0)

#Scorecard of all best bowlers of other teams against main team
teamBowlersVsBatsmenAllOppnAllMatchesRept(matches=mi_Allmatches,theTeam="Mumbai Indians",rank=0)

#Scorecard of performance of specific opposite team to specific main team
teamBowlersVsBatsmenAllOppnAllMatchesRept(matches=mi_Allmatches,theTeam="Kolkata Knight Riders",rank=0)

#Plot to show the performance of a opposition bowler against all batsmen of main team
df <- teamBowlersVsBatsmenAllOppnAllMatchesRept(mi_Allmatches,theTeam="Mumbai Indians",rank=1)
teamBowlersVsBatsmenAllOppnAllMatchesPlot(df,"Mumbai Indians","Mumbai Indians")

#Plot to show performance of top opposition bowlers against main team(t1) & kind of wickets(t2)
teamBowlingWicketKindAllOppnAllMatches(mi_Allmatches,t1="Mumbai Indians",t2="All")

#Plot showing main team bowler Wicket Runs in matches against all opposing teams
teamBowlingWicketRunsAllOppnAllMatches(mi_Allmatches,t1="Mumbai Indians",t2="All",plot=TRUE)
