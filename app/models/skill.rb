# frozen_string_literal: true

class Skill < ApplicationRecord
  # Associations
  belongs_to :characteristic
  has_and_belongs_to_many :careers

  # Validations
  validates :abbreviation, :name, :description, presence: true
end
