require 'rails_helper'

RSpec.describe Attitude, type: :model do
  subject {
    described_class.create(name: "test", description: "Testing", source: Source.create(name: 'Test', page: 15))
  }

  describe 'Associations' do
    it { should belong_to(:source).optional }
  end

  describe 'Validations' do
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'should be invalid without a name' do
      subject.name = nil
      expect(subject).not_to be_valid
    end
    it 'should be invalid without a description' do
      subject.description = nil
      expect(subject).not_to be_valid
    end
  end
end
