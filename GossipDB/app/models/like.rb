class Like < ApplicationRecord
  belongs_to :gossip, optional: true
  belongs_to :commentaire, optional: true
end
