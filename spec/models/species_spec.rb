require 'rails_helper'

RSpec.describe Species, type: :model do
  subject {
    described_class.new(name: "Test",
                        description: "Testing")
  }
  describe 'Associations' do
    it { should have_many(:startingcharacteristics) }
    it { should have_many(:characteristics).through(:startingcharacteristics) }
  end
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
  end
end
