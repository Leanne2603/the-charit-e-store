class AppealsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_regions
  before_action :set_appeal, only: [:show, :update, :edit, :destroy]

  def index
    @appeals = Appeal.all
  end

  def new
    @appeal = Appeal.new
    @regions = Region.select("max(id) as id, region").group(:region) # creates a drop down menu on the shared new/edit appeals form for existing regions in the database without showing duplicates
  end
  
  def create
    @appeal = Appeal.new(appeal_params)
    if @appeal.save
      redirect_to appeal_path(appeal)
    else
      flash[:notice] = 'Fields must not be blank!'
      redirect_to appeals_new_path
    end
  end
  
  def edit
    @regions = Region.select("max(id) as id, region").group(:region) # creates a drop down menu on the shared new/edit appeals form for existing regions in the database without showing duplicates
  end
  
  def update
    if @appeal.update(appeal_params)
        redirect_to appeals_path
      else
        flash[:notice] = 'Fields must not be blank. Your changes have not been saved!'
        redirect_to appeal_path
      end
  end
  
  def show
  end

  def destroy
    flash[:notice] = 'Appeal has been successfully deleted'
    @appeal.destroy
    redirect_to appeals_path
  end

  private

  def set_regions
    @regions = Region.all
  end

  def set_appeal
    @appeal = Appeal.find(params[:appeal_id])
  end

  def appeal_params
    params.require(:appeal).permit(:appeal, :description, :delivery_address, :recipient, :active, :image, :region_id)
  end 
end
