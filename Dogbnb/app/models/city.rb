class City < ApplicationRecord
  has_many :animal_sitters
  has_many :animals
end
