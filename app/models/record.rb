class Record < ApplicationRecord

  validates :title, presence: true
  validates :record_day, presence: true
  belongs_to :user
  
  def self.search(search)
    if search != ""
      Record.where('title LIKE(?)', "%#{search}%")
    else
      Record.all
    end
  end
end
