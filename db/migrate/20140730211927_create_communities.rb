class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.integer :id
      t.string :name
      t.text :about
      t.string :link
      t.string :rss
      t.integer :category_id

      t.timestamps
    end
  end
end
