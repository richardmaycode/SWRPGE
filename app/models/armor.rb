class Armor < ApplicationRecord
  # Associations
  belongs_to :source, optional: true

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :defense, presence: true, :numericality => { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :hp, presence: true, :numericality => { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :price, presence: true, :numericality => { greater_than_or_equal_to: 0, less_than_or_equal_to: 5000 }
  validates :rarity, presence: true, :numericality => { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :soak, presence: true, :numericality => { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
