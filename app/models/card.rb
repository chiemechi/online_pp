class Card < ApplicationRecord
  belongs_to :list
  has_one_attached :image

  validates :title, presence: true
 
end
