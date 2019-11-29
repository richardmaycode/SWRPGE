class Source < ApplicationRecord
# Associations
	has_many :attitudes
	has_many :character_classes
	has_many :duties
	has_many :hooks
# Validations
	validates :name, presence: true
end
