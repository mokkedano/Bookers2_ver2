class UsersController < ApplicationController
  
  
  def show
    @user = current_user
    @book = Book.new
  end

  def index
    @book = Book.new
  end

  def edit
  end
end
