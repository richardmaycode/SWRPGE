class Silhouette < ApplicationRecord
  has_many :species

  validates :size, :description, presence: true
end
