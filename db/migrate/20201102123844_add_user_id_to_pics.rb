class AddUserIdToPics < ActiveRecord::Migration[6.0]
  def change
    add_column :pics, :user_id, :integer
  end
end
