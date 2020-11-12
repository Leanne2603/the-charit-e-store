class RegionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_region, only: [:show, :update, :edit, :destroy]

  def index
      @regions = Region.all
  end

  def new
      @region = Region.new
  end
  
  def create
      region = Region.create(region_params)
      redirect_to region_path(region)
  end
  
  def edit
  end
  
  def update
      @region.update(region_params)
      redirect_to regions_path
  end
  
  def show
  end

  def destroy
      @region.destroy
      redirect_to regions_path
  end

  private

  def set_region
      @region = Region.find(params[:region_id])
  end

  def region_params
      params.require(:region).permit(:region)
  end 
end
