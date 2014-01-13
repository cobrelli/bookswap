class BooksController < ApplicationController
  def new
  	@book = Book.new
  end

  def index
  	@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end

  def create
  	@book = Book.new(user_params)
  	if @book.save
      flash[:success] = "Lisäys onnistui!"
      redirect_to "/books"
    else
      render 'new'
    end
  end

  def user_params
  	params.require(:book).permit(:name, :user, :value, :author)
  end
end