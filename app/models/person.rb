class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species

  has_many :pilots
end
# species = RestClient.get('https://swapi.dev/api/species/')
# people = RestClient.get('https://swapi.dev/api/people/')
# starships = RestClient.get('https://swapi.dev/api/starships/')

# species_array = JSON.parse(species)["results"]
# people_array = JSON.parse(people)["results"]
# starships_array = JSON.parse(starships)["results"]

# species_array.each do |species|
#   Species.create(
#     name: species["name"]
#   )
# end

# people_array.each do |person|
#   if person["species"].any?
#     Person.create(
#       name: person["name"],
#       height: person["height"],
#       mass: person["mass"],
#       birth_year: person["birth_year"],
#       planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
#       species_id: /(\d+)/.match(person["species"][0])[0].to_i
#     )
#   else
#     Person.create(
#       name: person["name"],
#       height: person["height"],
#       mass: person["mass"],
#       birth_year: person["birth_year"],
#       planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
#       species_id: 0
#     )
#   end
# end
