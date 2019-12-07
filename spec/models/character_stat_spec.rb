require 'rails_helper'

RSpec.describe CharacterStat, type: :model do
  let(:subject) { create(:character_stat) }
  
  describe 'Associations' do 
    it { should belong_to(:statable) }
  end

  describe 'Validations' do
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'should be invalid with a brawn stat' do
      subject.brawn = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a agility stat' do
      subject.agility = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a intellect stat' do
      subject.intellect = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a cunning stat' do
      subject.cunning = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a willpower stat' do
      subject.willpower = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a presence stat' do
      subject.presence = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a wound_threshold stat' do
      subject.wound_threshold = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a strain_threshold stat' do
      subject.strain_threshold = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid with a experience stat' do
      subject.experience = nil
      expect(subject).to_not be_valid
    end
  end
end
