class Talent < ApplicationRecord
# validations
	validates :abbreviation, :name, :description, :activation, presence: true
end
