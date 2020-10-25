class Record < ApplicationRecord

  validates :title, presence: true
  validates :record_day, presence: true
  
  def self.search(search)
    if search != ""
      Record.where('title LIKE(?)', "%#{search}%")
    else
      Record.all
    end
  end
end
