class RegionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_region, only: [:show, :update, :edit, :destroy]
  before_action :check_user_access, only: [:new, :create, :update, :edit, :destroy]

  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end
  
  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to region_path(@region)
    else
      flash[:notice] = @region.errors.full_messages.to_sentence
      redirect_to regions_new_path
    end
  end
  
  def edit
  end
  
  def update
    if @region.update(region_params)
        redirect_to regions_path
    else
        flash[:notice] = @region.errors.full_messages.to_sentence
        redirect_to region_path
    end
  end
  
  def show
  end

  def destroy
    flash[:notice] = 'Region has been successfully deleted'
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
  
  def check_user_access
    if !(user_signed_in? && current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to access that page"
      redirect_to root_path
    end
  end
end
