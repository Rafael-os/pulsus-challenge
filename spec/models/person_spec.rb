require 'rails_helper'

RSpec.describe Person, type: :model do
  it "is valid with valid attributes" do
    expect(Auction.new).to be_valid
  end

  it "is not valid without a name" do
    person = Person.new(title: nil)
    expect(person).to_not be_valid
  end
end
