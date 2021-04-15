require 'rails_helper'

RSpec.describe Starship, type: :model do
  describe 'associations' do
    it { expect(Starship.reflect_on_association(:people).macro).to eq(:has_many) }
  end

  subject { described_class.new(name: 'x-wing', url: 'https://swapi.dev/api/starships/49/') }

  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.name = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'url' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.url = nil
        expect(subject).to_not be_valid
      end
    end
  end
end
