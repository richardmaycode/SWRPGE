require 'rails_helper'

RSpec.describe Armor, type: :model do
  let(:subject) { create(:armor) }

  describe 'Associations' do
    it { should belong_to(:source).optional }
  end

  describe 'Validations' do 
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'should be invalid without a name' do 
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a desciption' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a defense' do
      subject.defense = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a hp' do
      subject.hp = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a price' do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    it 'should be invalid without a rarity' do
      subject.rarity = nil
      expect(subject).to_not be_valid 
    end
    it 'should be invalid without a soak' do
      subject.soak = nil
      expect(subject).to_not be_valid
    end

    it 'should be valid with rarity > 10' do
      subject.rarity = 11
      expect(subject).to_not be_valid
    end

    it 'should be invalid with rarity < 1' do
      subject.rarity = 0
      expect(subject).to_not be_valid
    end

    it 'should be invalid with defense > 5' do
      subject.defense = 6
      expect(subject).to_not be_valid
    end
    
    it 'should be invalid with defense < 0' do
      subject.defense = -1
      expect(subject).to_not be_valid
    end

    it 'should be invalid with soak > 5' do
      subject.soak = 6 
      expect(subject).to_not be_valid
    end
    
    it 'should be invalid with soak < 0' do
      subject.soak = -1
      expect(subject).to_not be_valid
    end

    it 'should be invalid with hp > 5' do
      subject.hp = 6 
      expect(subject).to_not be_valid
    end
    
    it 'should be invalid with hp < 0' do
      subject.hp = -1
      expect(subject).to_not be_valid
    end

    it 'should be invalid with hp > 5000' do
      subject.price = 5001
      expect(subject).to_not be_valid
    end
    
    it 'should be invalid with hp < 0' do
      subject.price = -1
      expect(subject).to_not be_valid
    end
  end
end
