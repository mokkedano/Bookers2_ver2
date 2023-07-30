class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  
  def show
    @book = Book.find(params[:id])
  end
  
  
  def create
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  
  def update
  end
  
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
  
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
