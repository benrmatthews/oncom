class Community < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags, :categories
  acts_as_votable
    
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
    where("about ilike ?", "%#{query}%") 
  end
  
  def score
    self.get_upvotes.size - self.get_downvotes.size
  end  
end
