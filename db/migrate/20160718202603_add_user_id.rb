class AddUserId < ActiveRecord::Migration[5.0]
  def change
    change_table :squares do |t|
      t.integer :user_id
    end
  end
end
