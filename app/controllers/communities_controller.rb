class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :browse, :new, :create]

  # GET /communities
  # GET /communities.json
  def index
    if params[:search]
      @communities = Community.search(params[:search])
      expires_in 5.minutes, public: true
    else
      @communities = Community.all.order('name ASC')
    end
  end
  
  def browse
    @communities = Community.all.order('name ASC')
  end
 

  # GET /communities/1
  # GET /communities/1.json
  def show
    @community = Community.find(params[:id])
    if request.path != community_path(@community)
      redirect_to @community, status: :moved_permanently
    end
  end

  # GET /communities/new
  def new
    @community = Community.new
  end

  # GET /communities/1/edit
  def edit
  end

  # POST /communities
  # POST /communities.json
  def create
    @community = Community.new(community_params)

    respond_to do |format|
      if @community.save
        format.html { redirect_to @communities, notice: 'Community was successfully created.' }
        format.json { render :show, status: :created, location: @community }
      else
        format.html { render :new }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communities/1
  # PATCH/PUT /communities/1.json
  def update
    respond_to do |format|
      if @community.update(params[:community].permit(:name, :about, :link, :rss, :tag_list, :category_list))
        format.html { redirect_to @community, notice: 'Community was successfully updated.' }
        format.json { render :show, status: :ok, location: @community }
      else
        format.html { render :edit }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communities/1
  # DELETE /communities/1.json
  def destroy
    @community.destroy
    respond_to do |format|
      format.html { redirect_to communities_url, notice: 'Community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @community = Community.find(params[:id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def community_params
      params.require(:community).permit(:name, :about, :link, :rss, :tag_list, :category_list)
    end
  
end
