class Community < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  
  belongs_to :category

  def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
    where("about like ?", "%#{query}%") 
  end
  
  def tag_list
    tags.join(", ")
  end
  
  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
