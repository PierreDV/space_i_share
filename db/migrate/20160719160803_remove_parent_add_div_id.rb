class RemoveParentAddDivId < ActiveRecord::Migration[5.0]
  def change
    add_column :squares, :parent_div, :string
    remove_column :squares, :parent_id
  end
end
