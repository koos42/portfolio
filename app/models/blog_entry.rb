class BlogEntry < ActiveRecord::Base
  has_many :pictures, :as => :imageable
end
