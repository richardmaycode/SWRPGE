class Source < ApplicationRecord
# Associations
	has_many :attitudes
# Validations
	validates :name, presence: true
end
