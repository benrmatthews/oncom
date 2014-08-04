class Community < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags
  
  belongs_to :category, touch: true
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
    where("about like ?", "%#{query}%") 
  end
  
end
