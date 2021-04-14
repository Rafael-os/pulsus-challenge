FactoryBot.define do
  factory :planet do
    name { "Tattoine" }
    climate {"arid"}
  end

  factory :species do
    name {"Human"}
  end
end