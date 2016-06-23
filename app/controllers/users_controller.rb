class UsersController < ApplicationController

  def index
     @user = User.find(params[:id])
     @reviews = @user.reviews
  end

  def show
  @user = User.find(params[:id])
  end

def new
  @avatar = current_user.avatar.build
  @avatar.build_photo
end

def create
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:fullname, :email, :password,
                                   :password_confirmation, :avatar)
    end


end
