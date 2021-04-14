class Starship < ApplicationRecord
  has_many :pilots

  validates :name, presence: true
end
