class Community < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags, :tag_list
end
