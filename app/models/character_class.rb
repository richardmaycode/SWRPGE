# frozen_string_literal: true

class CharacterClass < ApplicationRecord
  # Associations
  belongs_to :source, optional: true

  # Validaitons
  validates :name, :description, presence: true
end
