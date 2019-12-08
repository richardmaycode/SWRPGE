# frozen_string_literal: true

class SecondaryMotivation < ApplicationRecord
  # Associations
  belongs_to :source, optional: true
  belongs_to :primary_motivation

  # Validations
  validates :name, :description, presence: true
end
