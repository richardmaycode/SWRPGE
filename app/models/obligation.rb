class Obligation < ApplicationRecord
#Associations
belongs_to :source, optional: true

# Validations
  validates :name, :description, presence: true
end
