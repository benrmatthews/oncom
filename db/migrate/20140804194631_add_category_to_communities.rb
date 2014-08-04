class AddCategoryToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :category_id, :int
  end
end
