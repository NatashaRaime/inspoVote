

class VoteController < ApplicationController

   def index
    @results = ActiveRecord::Base.connection.execute("select candidates.candidateId, 
        candidates.name, races.title , races.raceId, elections.electionId from candidates,elections,
        elections_races , races        
        where candidates.raceId=elections_races.raceId and
         elections.electionId=elections_races.electionId and 
         candidates.raceId = races.raceId
         order  by races.raceId")


    @filteredElection = Election.find(params[:electionId])

    @selectedRaces = ElectionsRace.where(electionId: params[:electionId] )

   end


end
