class AddImageRemoteUrlToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :image_remote_url, :string
  end
end
