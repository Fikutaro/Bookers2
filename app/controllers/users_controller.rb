class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books.all
  
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  
  def update
  end
  
  def index
    @users = User.all
     @user = current_user
  end


  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  
  end
  
end
