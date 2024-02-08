class Animal < ApplicationRecord
  has_many :strolls
  has_many :animal_sitters, through: :strolls
  belongs_to :city
end
