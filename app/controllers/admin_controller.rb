class AdminController < ApplicationController
    before_action :check_user_access # Checks whether a user has permission to these functions - if not, it will redirect back to the root path
    before_action :set_user, only: [:show, :update, :edit, :destroy]

    def index
       @users = User.all
    end

    def destroy
        flash[:notice] = 'User has been successfully deleted'
        @user.destroy
        redirect_to appeals_path
    end


    private
    
    def set_user
        @user = User.find(params[:user_id])
    end

    def check_user_access
        if !(user_signed_in? && current_user.has_role?(:admin))
          flash[:alert] = "You are not authorised to access that page"
          redirect_to root_path
        end
    end
end
