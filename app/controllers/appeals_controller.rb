class AppealsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_regions
  before_action :set_appeal, only: [:show, :update, :edit, :destroy]

  def index
      @appeals = Appeal.all
  end

  def new
      @appeal = Appeal.new
      @regions = Region.select("max(id) as id, region").group(:region)
  end
  
  def create
      appeal = Appeal.create!(appeal_params)
      redirect_to appeal_path(appeal)
  end
  
  def edit
      @regions = Region.select("max(id) as id, region").group(:region)
  end
  
  def update
      @appeal.update(appeal_params)
      redirect_to appeals_path
  end
  
  def show
  end

  def destroy
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
      params.require(:appeal).permit(:appeal, :description, :delivery_address, :recipient, :active, :region_id)
  end 
end
