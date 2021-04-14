class MainController < ApplicationController
  def home
    @people = Person.all
  end

  private

  def planets
    @planets = Planet.all
  end

  def species
    @species = Species.all
  end

  def starships
    @starships = Starship.all
  end
end