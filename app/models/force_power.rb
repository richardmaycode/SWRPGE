# frozen_string_literal: true

class ForcePower < ApplicationRecord
  # Associations
  belongs_to :source, optional: true
  has_many :force_abilities

  # Validations
  validates :name, :description, presence: true
end
