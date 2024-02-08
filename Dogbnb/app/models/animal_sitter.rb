class AnimalSitter < ApplicationRecord
  has_many :strolls
  has_many :animals, through: :strolls
  belongs_to :city
end
