require 'rails_helper'

RSpec.describe Source, type: :model do
  subject {
    described_class.create(name: 'Source', 
                          page: 15)
  }
  
  describe 'Associations' do
    it { should have_many(:attitudes) }
    it { should have_many(:careers) }
    it { should have_many(:character_classes) }
    it { should have_many(:duties) }
    it { should have_many(:force_abilities) }
    it { should have_many(:force_powers) }
    it { should have_many(:hooks) }
    it { should have_many(:primary_motivations) }
    it { should have_many(:obligations) }
    it { should have_many(:secondary_motivations) }
  end

  describe 'Validations' do
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'should be invalid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
