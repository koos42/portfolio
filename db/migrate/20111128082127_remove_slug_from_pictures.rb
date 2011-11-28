class RemoveSlugFromPictures < ActiveRecord::Migration
  def up
    remove_column  :pictures, :slug
  end

  def down
    add_column :pictures, :slug, :string
  end
end
