class Planet < ApplicationRecord
  has_many :people

  validates :name, :climate, presence: true
end
