require 'rails_helper'
require 'pry'

RSpec.describe Person, type: :model do
  describe 'associations' do
    it { expect(Person.reflect_on_association(:planet).macro).to eq(:belongs_to) } 
    it { expect(Person.reflect_on_association(:species).macro).to eq(:belongs_to) }
    it { expect(Person.reflect_on_association(:pilots).macro).to eq(:has_many) }
  end
  # planet = Planet.new(name: "Tatooine", climate: "arid")
  # species = Species.new(name: "Human")

  # subject { described_class.new(name: 'Luke', height: 170, mass: 80, birth_year: "19BBY", planet_id: planet.id, species_id: species.id) }
  # describe 'validations' do
  #   describe 'name' do
  #     it 'must be present' do
  #       expect(subject).to be_valid
  #       subject.name = nil
  #       expect(subject).to_not be_valid
  #     end
  #   end

  #   describe 'height' do
  #     it 'must be present' do
  #       expect(subject).to be_valid
  #       subject.height = nil
  #       expect(subject).to_not be_valid
  #     end
  #   end

  #   describe 'mass' do
  #     it 'must be present' do
  #       expect(subject).to be_valid
  #       subject.mass = nil
  #       expect(subject).to_not be_valid
  #     end
  #   end

  #   describe 'birth year' do
  #     it 'must be present' do
  #       expect(subject).to be_valid
  #       subject.birth_year = nil
  #       expect(subject).to_not be_valid
  #     end
  #   end
  # end

end
