class CreatePics < ActiveRecord::Migration[6.0]
  def change
    create_table :pics do |t|
      t.date   :record_day,null:false
      t.string      :title, null: false, limit: 255
      t.text        :memo, limit: 1000
      t.timestamps
    end
  end
end
