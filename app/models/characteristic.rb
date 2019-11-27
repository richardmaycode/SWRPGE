class Characteristic < ApplicationRecord
# Validations
    validates :name, :description, :abbreviation, presence: true
end
