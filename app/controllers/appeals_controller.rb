class AppealsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :edit, :destroy, :appeal_items] # authenticates a user to ensure that only admin can access the CRUD actions and only a registered user can view items which relate to an appeal
  before_action :set_regions
  before_action :set_appeal, only: [:show, :update, :edit, :destroy, :appeal_items]
  before_action :check_user_access, only: [:new, :create, :update, :edit, :destroy] # Checks whether a user has permission to these functions - if not, it will redirect back to the root path


  def index
    # renders 9 appeals per page
    # checks to see if the user is signed in with admin - if the user is signed it, they will be able to see all appeals whether the 
    # active status is set to true or not. A member will only see results where active is set to true
    if (user_signed_in? && current_user.has_role?(:admin))
      @appeals = Appeal.paginate(page: params[:page])
    else
      @appeals = Appeal.paginate(page: params[:page]).where(active: true)
    end
  end

  def new
    @appeal = Appeal.new
    # creates a drop down menu on the shared new/edit appeals form for existing regions in the database without showing duplicates
    @regions = Region.select("max(id) as id, region").group(:region) 
  end

  def appeal_items
  end
  
  def create
    # admin creates the new appeal and is redirected to the new appeal which has been created. If there is an issue with saving, a message
    # will show advising what the error is (i.e. mandatory fields left blank)
    @appeal = Appeal.new(appeal_params)
    if @appeal.save
      redirect_to appeal_path(@appeal)
    else
        flash[:notice] = @appeal.errors.full_messages.to_sentence
        redirect_to appeals_new_path
    end
  end
  
  def edit
    # creates a drop down menu on the shared new/edit appeals form for existing regions in the database without showing duplicates
    @regions = Region.select("max(id) as id, region").group(:region) 
  end
  
  def update
    # admin can update appeals. If there is an error, it will redirect and advise of error
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
  
  # ensures that no user other than admin can navigate to non permitted pages (i.e CRUD functions (except read))
  def check_user_access
    if !(user_signed_in? && current_user.has_role?(:admin))
      flash[:alert] = "You are not authorised to access that page"
      redirect_to appeals_path
    end
  end
end
