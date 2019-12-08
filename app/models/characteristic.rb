# frozen_string_literal: true

class Characteristic < ApplicationRecord
  # Associations
  has_many :startingcharacteristics

  # Validations
  validates :name, :description, :abbreviation, presence: true
end
