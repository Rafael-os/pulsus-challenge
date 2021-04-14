require 'rails_helper'

RSpec.describe Species, type: :model do
  subject { described_class.new(name: 'human') }

  describe 'associations' do
    it { expect(Species.reflect_on_association(:people).macro).to eq(:has_many) } 
  end

  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.name = nil
        expect(subject).to_not be_valid
      end
    end
  end
end
