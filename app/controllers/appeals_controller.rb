class AppealsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:buy] # Donate now button would not generate payment page without this option in both items and appeals controller
  before_action :authenticate_user!, only: [:update, :edit, :destroy]
  before_action :set_regions
  before_action :set_appeal, only: [:show, :update, :edit, :destroy, :appeal_items]
  before_action :check_user_access, only: [:new, :create, :update, :edit, :destroy] # Checks whether a user has permission to these functions - if not, it will redirect back to the root path


  def index
    # renders 9 appeals per page
    @appeals = Appeal.paginate(page: params[:page])
  end

  def new
    @appeal = Appeal.new
    @regions = Region.select("max(id) as id, region").group(:region) # creates a drop down menu on the shared new/edit appeals form for existing regions in the database without showing duplicates
  end

  def appeal_items
  end
  
  def create
    @appeal = Appeal.new(appeal_params)
    if @appeal.save
      redirect_to appeal_path(@appeal)
    else
        flash[:notice] = @appeal.errors.full_messages.to_sentence
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
        flash[:notice] = @appeal.errors.full_messages.to_sentence
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

  def cancel
    flash[:notice] = 'Unfortunately we were not able to process your payment at this time. Please try again'
    redirect_to item_path(item)
  end

  private

  def set_regions
    @regions = Region.all
  end

  def set_appeal
    @appeal = Appeal.find(params[:appeal_id])
  end

  def appeal_params
    params.require(:appeal).permit(:appeal, :description, :delivery_address, :recipient, :active, :image, :region_id, item_ids: [])
  end
  
  def check_user_access
    if !(user_signed_in? && current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to access that page"
      redirect_to appeals_path
    end
  end
end
