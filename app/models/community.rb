class Community < ActiveRecord::Base
  attr_accessible :tags, :tag_list
  acts_as_taggable
  acts_as_taggable_on :tags, :tag_list 
end
