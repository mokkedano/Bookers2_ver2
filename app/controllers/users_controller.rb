class UsersController < ApplicationController
  
  
  def show
    @user = current_user
    @book = Book.new
    @books = Book.find(params[:id])
  end


  def index
    @user = User.all
    @book = Book.new
  end


  def edit
    @user = User.find(params[:id])
  end
  
  
  def update
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
