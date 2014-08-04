class CategoriesController < ApplicationController
  def index
    @categories = ActsAsTaggableOn::Tag.all
  end

  def show
    @category =  ActsAsTaggableOn::Tag.find(params[:id])
    @communities = Community.tagged_with(@category.name)
  end
end