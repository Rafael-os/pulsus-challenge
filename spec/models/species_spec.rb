require 'rails_helper'

RSpec.describe Species, type: :model do
  subject { described_class.new(name: 'human') }

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
