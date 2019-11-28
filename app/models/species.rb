class Species < ApplicationRecord
# Associations
has_many :startingcharacteristics
has_many :characteristics, through: :startingcharacteristics
# Validations
validates :name, :description, presence: true
end
