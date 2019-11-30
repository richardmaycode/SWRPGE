class ForcePower < ApplicationRecord
#Associations
belongs_to :source, optional: true

# Validations
  validates :name, :description, presence: true
end
