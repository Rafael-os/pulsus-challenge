class MainController < ApplicationController
  def home
    @people = Person.all
  end

  def format_pilots(person)
    person.pilots.map { |s| s.split('/').last.to_i }
  end

  def pilot_starships(person)
    ships = []
    format_pilots(person).each do |pilot|
      ships << Starship.find_by(url: "http://swapi.dev/api/starships/#{pilot}/").name
    end
    ships
  end
  helper_method :pilot_starships
end
