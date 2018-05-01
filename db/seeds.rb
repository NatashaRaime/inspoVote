# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  
states = [
    { stateId: 1, name: 'Alabama'},
    { stateId: 2, name: 'Alaska'},
    { stateId: 3, name: 'Hawaii'},
    { stateId: 4, name: 'Arizona'},
    { stateId: 5, name:  'Arkansas'},
    { stateId: 6, name:  'California'},
    { stateId: 7, name:  'Colorado'},
    { stateId: 8, name:  'Connecticut'},
    { stateId: 9, name:  'Delaware'},
    { stateId: 10, name: 'West Virginia'},
    { stateId: 11, name: 'Wisconsin'},
    { stateId: 12, name: 'Florida'},
    { stateId: 13, name: 'Georgia'},
    { stateId: 14, name: 'Idaho'},
    { stateId: 15, name: 'Illinois'},
    { stateId: 16, name: 'Indiana'},
    { stateId: 17, name: 'Iowa'},
    { stateId: 18, name: 'Kansas'},
    { stateId: 19, name: 'Kentucky'},
    { stateId: 20, name: 'Louisiana'},
    { stateId: 21, name: 'Maine'},
    { stateId: 22, name: 'Maryland'},
    { stateId: 23, name: 'Massachusetts'},
    { stateId: 24, name: 'Michigan'},
    { stateId: 25, name: 'Minnesota'},
    { stateId: 26, name: 'Mississippi'},
    { stateId: 27, name: 'Missouri'},
    { stateId: 28, name: 'Montana'},
    { stateId: 29, name: 'Nebraska'},
    { stateId: 30, name: 'Nevada'},
    { stateId: 31, name: 'New Hampshire'},
    { stateId: 32, name: 'New Jersey'},
    { stateId: 33, name: 'New Mexico'},
    { stateId: 34, name: 'New York'},
    { stateId: 35, name: 'North Carolina'},
    { stateId: 36, name: 'North Dakota'},
    { stateId: 37, name: 'Ohio'},
    { stateId: 38, name: 'Oklahoma'},
    { stateId: 39, name: 'Oregon'},
    { stateId: 40, name: 'Pennsylvania'},
    { stateId: 41, name: 'Wyoming'},
    { stateId: 42, name: 'Rhode Island'},
    { stateId: 43, name: 'South Carolina'},
    { stateId: 44, name: 'South Dakota'},
    { stateId: 45, name: 'Tennessee'},
    { stateId: 46, name: 'Texas'},
    { stateId: 47, name: 'Utah'},
    { stateId: 48, name: 'Vermont'},
    { stateId: 49, name: 'Virginia'},
    { stateId: 50, name: 'Washington'}    
] 

states.each do |state|
   State.create(state)
end

districtsOfWashington = [
    {districtId: 1, stateId: 50, name: 'King'},
    {districtId: 2, stateId: 50, name: 'Pierce'},
    {districtId: 3, stateId: 50, name: 'Snohomish'},
    {districtId: 4, stateId: 50, name: 'Benton'},
    {districtId: 5, stateId: 50, name: 'Yakima'},
    {districtId: 6, stateId: 50, name: 'Whatcom'},
    {districtId: 7, stateId: 50, name: 'Clark'},
    {districtId: 8, stateId: 50, name: 'Whitman'},
    {districtId: 9, stateId: 50, name: 'Chelan'},
    {districtId: 10, stateId: 50, name: 'Grays'}
]

districtsOfWashington.each do |district|
    District.create(district)
end


candidates = [
    {candidateId: 1, raceId: 10245, votes: 0, name: "Rhianna"},
    {candidateId: 2, raceId: 10245, votes: 0, name: "Elton John"},
    {candidateId: 3, raceId: 10245, votes: 0, name: "Kanye West"},
    {candidateId: 4, raceId: 10245, votes: 0, name: "Billy Joel"},
    {candidateId: 5, raceId: 10242, votes: 0, name: "Mario Batali"},
    {candidateId: 6, raceId: 10242, votes: 0, name: "Bill Gates"},
    {candidateId: 7, raceId: 10242, votes: 0, name: "Carol Channing"},
    {candidateId: 8, raceId: 10239, votes: 0, name: "Rosamond Grace"},
    {candidateId: 9, raceId: 10239, votes: 0, name: "Bertha Knight"},
    {candidateId: 10, raceId: 10239, votes: 0, name: "Bailey Gatzert"},
    {candidateId: 11, raceId: 10239, votes: 0, name: "Arthur B. Langlie"},
    {candidateId: 12, raceId: 10222, votes: 0, name: "Nigella Lawson"},
    {candidateId: 13, raceId: 10222, votes: 0, name: "Giada Delaurentis"},
    {candidateId: 14, raceId: 10222, votes: 0, name: "Julia Child"},
    {candidateId: 15, raceId: 10222, votes: 0, name: "Ina Garten"},
    {candidateId: 16, raceId: 10000, votes: 0, name: "Santorini"},
    {candidateId: 17, raceId: 10000, votes: 0, name: "Tokyo"},
    {candidateId: 18, raceId: 10000, votes: 0, name: "Paris"},
    {candidateId: 19, raceId: 10000, votes: 0, name: "Berlin"}
]

candidates.each do |candidate|
    Candidate.create(candidate)
 end

races = [
    { raceId: 10245, title: "Best Performer"},
    { raceId: 10242, title: "Best Seattle Celebrity"},
    { raceId: 10000, title: "Where We Want To Live"},
    { raceId: 10239, title: "Most Influential Washington Mayor"},
    { raceId: 10222, title: "Most Likely To Succeed"}

]

races.each do |race|
    Race.create(race)
end

elections = [
    {electionId: 1262, districtId: 1, title: "Like a buzzfeed quiz but better"},
    {electionId: 2286, districtId: 1, title: "May 2018 Tops Vote"},
    {electionId: 4254, districtId: 1, title: "Seattle Vote 2018"},
    {electionId: 8622, districtId: 2, title: "Pierce County Vote"}
]

elections.each do |election|
    Election.create(election)
end
