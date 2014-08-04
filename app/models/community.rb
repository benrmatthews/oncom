class Community < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags
  
  belongs_to :category, touch: true
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def self.search(search)
    if search
      find(:all, :communities => ['about ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end
end
  
end
