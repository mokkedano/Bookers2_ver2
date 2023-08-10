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
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
