class Source < ApplicationRecord
# Associations
	has_many :attitudes
	has_many :character_classes
	has_many :duties
	has_many :force_powers
	has_many :hooks
	has_many :obligations
# Validations
	validates :name, presence: true
end
