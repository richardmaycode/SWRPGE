# frozen_string_literal: true

class ForceAbility < ApplicationRecord
  # Assocations
  belongs_to :source, optional: true
  belongs_to :force_power

  # Validations
  validates :name, :description, presence: true
end
