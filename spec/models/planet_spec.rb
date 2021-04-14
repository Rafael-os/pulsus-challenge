require 'rails_helper'

RSpec.describe Planet, type: :model do
    it "is valid with valid attributes" do
      expect(Planet.new).to be_valid
    end

end
