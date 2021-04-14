require 'rails_helper'

RSpec.describe Planet, type: :model do
  subject { described_class.new(name: 'Tatooine', climate: 'arid') }

  describe 'associations' do
    it { expect(Planet.reflect_on_association(:people).macro).to eq(:has_many) } 
  end

  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.name = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'climate' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.climate = nil
        expect(subject).to_not be_valid
      end
    end

  end
end
