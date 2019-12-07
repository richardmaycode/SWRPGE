class CharacterStat < ApplicationRecord
  # Associations
  belongs_to :statable, polymorphic: true

  # Validations
  validates :brawn, :agility, :intellect, :cunning, :willpower, :presence, :wound_threshold, :strain_threshold, :experience, presence: true
end
