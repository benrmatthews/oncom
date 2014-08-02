class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
    @related_communities = Community
    .joins(:taggings)
    .where('communities.id != ?', @community.id)
    .where(taggings: { tag_id: @community.tag_ids })
  end
  
  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
end
