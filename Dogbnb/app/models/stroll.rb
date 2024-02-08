class Stroll < ApplicationRecord
  belongs_to :animal_sitter
  belongs_to :animal
end
