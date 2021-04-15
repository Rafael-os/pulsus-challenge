# This file should contain all the record creation needed to seed the database with its default values.
require 'json'
require 'rest-client'

# Populating all planets
puts "Lord Vader is using his force to create some planets! \n"
i = 1
pages = RestClient.get("https://swapi.dev/api/planets/?page=#{i}")
while JSON.parse(pages)["next"].present? do
  planets_array = JSON.parse(pages)["results"]
  planets_array.each do |planet|
    Planet.create(
      name: planet["name"],
      climate: planet["climate"]
    )
  end
  i += 1
  pages = RestClient.get("https://swapi.dev/api/planets/?page=#{i}")
end

JSON.parse(pages)["results"].each do |planet|
  Planet.create(
    name: planet["name"],
    climate: planet["climate"]
  )
end

puts "##########   Done!   ##########\n"

# Populating all species
puts " Now the lord is deciding which species should be alive!\n"
i = 1
pages = RestClient.get("https://swapi.dev/api/species/?page=#{i}")
while JSON.parse(pages)["next"].present? do
  species_array = JSON.parse(pages)["results"]
  species_array.each do |species|
    Species.create(
      name: species["name"]
    )
  end
  i += 1
  pages = RestClient.get("https://swapi.dev/api/species/?page=#{i}")
end

JSON.parse(pages)["results"].each do |species|
  Species.create(
    name: species["name"]
  )
end
puts "##########   Lord bless the Wookies!   ##########\n"

# Populating all people

puts "Now we need some live beings to be conquered! \n"
i = 1
pages = RestClient.get("https://swapi.dev/api/people/?page=#{i}")
while JSON.parse(pages)["next"].present? do
  people_array = JSON.parse(pages)["results"]
  people_array.each do |person|
    if person["species"].any?  
      Person.create!(
        name: person["name"],
        height: person["height"],
        mass: person["mass"],
        birth_year: person["birth_year"],
        planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
        species_id: /(\d+)/.match(person["species"][0])[0].to_i,
        pilots: person["starships"]
      )
    else
      Person.create!(
        name: person["name"],
        height: person["height"],
        mass: person["mass"],
        birth_year: person["birth_year"],
        planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
        species_id: 1,
        pilots: person["starships"]
      )
    end
  end
  i += 1
  pages = RestClient.get("https://swapi.dev/api/people/?page=#{i}")
end

JSON.parse(pages)["results"].each do |person|
  if person["species"].any?  
    Person.create(
      name: person["name"],
      height: person["height"],
      mass: person["mass"],
      birth_year: person["birth_year"],
      planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
      species_id: /(\d+)/.match(person["species"][0])[0].to_i,
      pilots: person["starships"]
    )
  else
    Person.create(
      name: person["name"],
      height: person["height"],
      mass: person["mass"],
      birth_year: person["birth_year"],
      planet_id: /(\d+)/.match(person["homeworld"])[0].to_i,
      species_id: 1,
      pilots: person["starships"]
    )
  end
end

puts "##########   Shall the politics begin!   ##########\n"

# Creating starships
puts "Let's save time from the engineers and create starships! \n"
i = 1
pages = RestClient.get("https://swapi.dev/api/starships/?page=#{i}")
while JSON.parse(pages)["next"].present? do
  starships_array = JSON.parse(pages)["results"]
  starships_array.each do |starship|
    Starship.create(
      name: starship["name"],
      pilots: starship["pilots"],
      url: starship["url"]
    )
  end
  i += 1
  pages = RestClient.get("https://swapi.dev/api/starships/?page=#{i}")
end

JSON.parse(pages)["results"].each do |starship|
  Starship.create(
    name: starship["name"],
    pilots: starship["pilots"],
    url: starship["url"]
  )
end

puts "Star wars universe created, may the force be with you! \n"
