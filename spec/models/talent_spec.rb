require 'rails_helper'

RSpec.describe Talent, type: :model do
  subject {
    described_class.create(abbreviation: 'ARM', name: 'Armor Master', description: 'When wearing armor, Increase total soak value by 1.', activation: 'Passive', forceTalent: false)
  }
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
    it 'should be invalid without an activation' do
      subject.activation = nil
      expect(subject).to_not be_valid
    end
  end
end
