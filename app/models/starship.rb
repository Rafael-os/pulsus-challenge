class Starship < ApplicationRecord
  has_many :people, through: :pilots

  validates :name, :url, presence: true
end
