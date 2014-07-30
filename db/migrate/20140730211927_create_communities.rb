class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :about
      t.string :category
      t.string :link
      t.string :rss

      t.timestamps
    end
  end
end
