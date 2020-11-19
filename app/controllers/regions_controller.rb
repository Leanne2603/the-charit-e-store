class RegionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_region, only: [:show, :update, :edit, :destroy]
  before_action :check_user_access, only: [:new, :create, :update, :edit, :destroy]

  def index
    # renders 50 regions per page
    @regions = Region.paginate(page: params[:page])
  end

  def new
    @region = Region.new
  end
  
  # creates a new region or generates an error if unable to save
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
  
  # updates region details or provides an error message as to why update can not be completed.
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
  
  # authenticates a user had admin access prior to accessing the functions associated to regions
  def check_user_access
    if !(user_signed_in? && current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to access that page"
      redirect_to root_path
    end
  end
end
