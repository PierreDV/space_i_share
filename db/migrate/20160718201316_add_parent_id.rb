class AddParentId < ActiveRecord::Migration[5.0]
  def create
    change_table :squares do |t|
      t.string :parent_id
    end
  end
end
