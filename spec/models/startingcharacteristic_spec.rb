require 'rails_helper'

RSpec.describe Startingcharacteristic, type: :model do
  subject {
    described_class.new(value: 5, characteristic: Characteristic.create(name: 'test', abbreviation: 'Test', description: 'test'), species: Species.create(name: 'Test', description: 'test'))
  }
  describe "Validations" do 
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end
