class BlogEntry < ActiveRecord::Base
  has_many :pictures, :as => :imageable
  has_many :links, :as => :linkable
end
