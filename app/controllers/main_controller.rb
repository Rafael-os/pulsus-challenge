class MainController < ApplicationController
  def home
    @people = Person.all
  end



  private

  def pilot
    @starships = Starship.all
    @people.find
  end
end