require 'rails_helper'

RSpec.describe Silhouette, type: :model do
  subject { create(:silhouette) }

  describe "Associations" do
    it { should have_many(:species) }
  end

  describe "Validations" do
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'should be invalid without a size' do
      subject.size = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end
end
