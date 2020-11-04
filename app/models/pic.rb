class Pic < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :record_day, presence: true
  validates :image, presence: true
  belongs_to :user



  def self.search(search)
    if search != ""
      Pic.where('title LIKE(?)', "%#{search}%")
    else
      Pic.all
    end
  end
end
