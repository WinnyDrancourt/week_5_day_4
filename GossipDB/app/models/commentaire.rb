class Commentaire < ApplicationRecord
    belongs_to :user
    belongs_to :gossip
    has_many :likes
end
