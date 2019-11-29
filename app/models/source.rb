class Source < ApplicationRecord
# Associations
	has_many :attitudes
	has_many :character_classes
# Validations
	validates :name, presence: true
end
