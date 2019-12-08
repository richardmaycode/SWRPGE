# frozen_string_literal: true

class Attitude < ApplicationRecord
  # Associations
  belongs_to :source, optional: true

  # Validations
  validates :name, :description, presence: true
end
