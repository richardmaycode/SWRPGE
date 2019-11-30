class Career < ApplicationRecord
  #Associations
  belongs_to :source, optional: true

  #validations
  validates :name, :description, presence: true
end
