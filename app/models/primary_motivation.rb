class PrimaryMotivation < ApplicationRecord
  # Associations
  belongs_to :source, optional: true
  has_many :secondary_motivations

  # Validations
  validates :name, :description, presence: true
end
