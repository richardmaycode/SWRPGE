# frozen_string_literal: true

class Hook < ApplicationRecord
  # Associations
  belongs_to :source, optional: true

  # Validations
  validates :name, :description, presence: true
end
