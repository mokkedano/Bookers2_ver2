class UsersController < ApplicationController
  
  
  def show
    @user = current_user
    @book = Book.new
    @books = Book.find(params[:id])
  end

  def index
    @book = Book.new
  end

  def edit
  end
end
