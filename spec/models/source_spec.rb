require 'rails_helper'

RSpec.describe Source, type: :model do
  subject {
    described_class.create(name: 'Source', 
                          page: 15)
  }
  
  describe 'Associations' do
    it { should have_many(:attitudes) }
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
