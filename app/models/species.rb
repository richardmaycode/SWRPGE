class Species < ApplicationRecord
  # Associations
  
  # Validations
  validates :name, :description, presence: true
end
