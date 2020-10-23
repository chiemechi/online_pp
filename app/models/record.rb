class Record < ApplicationRecord

  def self.search(search)
    if search != ""
      Record.where('title LIKE(?)', "%#{search}%")
    else
      Record.all
    end
  end
end
