class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.text :description
      t.references :main_picture

      t.timestamps
    end
  end
end
