class UsersController < ApplicationController
  before_action :authorize_admin

  def index
    @users = User.all
  end
  
def show
  @user = User.find_by_id(params[:id])
end

def authorize_admin
  redirect_to "/",  status: 401 unless (current_user.try(:admin?))
end

end
