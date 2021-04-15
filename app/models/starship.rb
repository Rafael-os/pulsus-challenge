class Starship < ApplicationRecord
  has_many :people, through: :pilots

  validates :name, presence: true
end
