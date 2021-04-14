require 'rails_helper'

RSpec.describe Pilot, type: :model do
  describe 'associations' do
    it { expect(Pilot.reflect_on_association(:person).macro).to eq(:belongs_to) } 
    it { expect(Pilot.reflect_on_association(:starship).macro).to eq(:belongs_to) }
  end
end
