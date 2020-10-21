class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string      :title, null: false, limit: 255
      t.text        :memo, limit: 1000
      t.timestamps
    end
  end
end
