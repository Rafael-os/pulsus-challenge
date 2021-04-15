class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species

  has_many :starships, through: :pilots

  validates :name, :mass, :height, :birth_year ,presence: true
end
