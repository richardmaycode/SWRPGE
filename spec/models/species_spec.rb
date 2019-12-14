require 'rails_helper'

RSpec.describe Species, type: :model do
  subject { create(:species) }
  describe 'Associations' do
    it { should belong_to(:source).optional }
    it { should have_one(:character_stat) }
    it { should belong_to(:silhouette) }
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
