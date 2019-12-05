require 'rails_helper'

RSpec.describe Duty, type: :model do
  subject { create(:duty) }

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
    it 'should be invalid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end
end