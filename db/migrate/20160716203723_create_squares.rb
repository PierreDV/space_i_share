class CreateSquares < ActiveRecord::Migration[5.0]
  def create
    create_table :squares do |t|
      t.string :color

      t.timestamps
    end
  end
end
