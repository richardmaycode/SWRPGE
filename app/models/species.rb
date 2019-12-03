class Species < ApplicationRecord
  # Associations
  has_one :character_stat, as: :statable
  belongs_to :source, optional: true
  
  # Validations
  validates :name, :description, presence: true
end
