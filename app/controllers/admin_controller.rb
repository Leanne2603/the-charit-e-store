class AdminController < ApplicationController
    before_action :check_user_access # Checks whether a user has permission to these functions - if not, it will redirect back to the root path

    def index
      @users = User.paginate(page: params[:page])
    end

    private

    # ensures only admin can view users
    def check_user_access
        if !(user_signed_in? && current_user.has_role?(:admin))
          flash[:alert] = "You are not authorised to access that page"
          redirect_to root_path
        end
    end
end
