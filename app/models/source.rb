# frozen_string_literal: true

class Source < ApplicationRecord
  # Associations
  has_many :armors
  has_many :attitudes
  has_many :careers
  has_many :character_classes
  has_many :duties
  has_many :force_abilities
  has_many :force_powers
  has_many :hooks
  has_many :primary_motivations
  has_many :obligations
  has_many :secondary_motivations

  # Validations
  validates :name, presence: true
end
