class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :community, index: true

      t.timestamps
    end
  end
end