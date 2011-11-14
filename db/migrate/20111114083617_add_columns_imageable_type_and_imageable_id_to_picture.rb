class AddColumnsImageableTypeAndImageableIdToPicture < ActiveRecord::Migration
  def self.up
    add_column :pictures, :imageable_id, :integer 
    add_column :pictures, :imageable_type, :string
  end

  def self.down
    remove_column :pictures, :imageable_id
    remove_column :pictures, :imageable_type
  end
end
