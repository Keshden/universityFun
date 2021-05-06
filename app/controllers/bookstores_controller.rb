class BookstoresController < ApplicationController
  before_action :set_book, only: [:edit, :update, :show, :destroy]
  before_action :require_bookstore_level_admin, except: [:index, :show]

  def index
    @books = Bookstore.all
  end

  def new
    @book = Bookstore.new
  end

  def create
    @book = Bookstore.new(book_params)
    if @book.save
      flash[:success] = "Book successfully added to Bookstore"
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:success] = "Book successfully updated."
      redirect_to @book
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @book.destroy
    flash[:danger] = "Book successfully removed."
    redirect_to bookstores_path
  end



  private
  
  def book_params
    params.require(:bookstore).permit(:bookName, :bookPrice, :authorName)
  end

  def set_book
    @book = Bookstore.find(params[:id])
  end

end