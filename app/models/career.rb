class Career < ApplicationRecord
  #Associations
  belongs_to :source, optional: true
  has_and_belongs_to_many :skills
  
  #validations
  validates :name, :description, presence: true
end
