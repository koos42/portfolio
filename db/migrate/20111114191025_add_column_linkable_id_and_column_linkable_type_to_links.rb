class AddColumnLinkableIdAndColumnLinkableTypeToLinks < ActiveRecord::Migration
  def self.up
    add_column :links, :linkable_id, :integer
    add_column :links, :linkable_type, :string
  end

  def self.down
    add_column :links, :linkable_id
    add_column :links, :linkable_type
  end
end
