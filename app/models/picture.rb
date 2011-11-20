class Picture < ActiveRecord::Base
  belongs_to :imageable, :polymorphic =>  true
  has_attached_file :image, :styles => { :medium => '300x300', :thumbnail  => '100x100' }
end
