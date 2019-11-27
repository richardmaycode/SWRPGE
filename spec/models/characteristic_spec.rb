require 'rails_helper'

RSpec.describe Characteristic, type: :model do
  subject {
    described_class.new(name: "Test", 
                        description: "Testing", 
                        abbreviation: "TS")
  }
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it 'is not valid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
    it 'is not valid without an abbreviation' do
      subject.abbreviation = nil
      expect(subject).to_not be_valid
    end
  end
end
