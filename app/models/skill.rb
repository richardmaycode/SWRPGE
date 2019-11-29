class Skill < ApplicationRecord
# Associations
  belongs_to :characteristic
# Validations
  validates :abbreviation, :name, :description, presence: true

end
