require 'rails_helper'

RSpec.describe Skill, type: :model do
  subject {
    described_class.create(abbreviation: 'Test', name: 'Test', description: 'test', characteristic: Characteristic.create(name: 'brawn', abbreviation: 'br', description: 'Test'))
  }
  describe 'Assocations' do
    it { should belong_to(:characteristic) }
    it { should have_and_belong_to_many(:careers) }
  end
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'should be invalid without an abbreviation' do
      subject.abbreviation = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end
end
