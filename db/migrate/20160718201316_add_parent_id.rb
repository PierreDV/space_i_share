class AddParentId < ActiveRecord::Migration[5.0]
  def change
    change_table :squares do |t|
      t.integer :parent_id
    end
  end
end
