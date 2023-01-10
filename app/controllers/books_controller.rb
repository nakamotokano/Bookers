class BooksController < ApplicationController
  def new
    @book = Book.new
    @book = Book.all
  end

  def create
   book = Book.new(book_parmars)
   book.save
   redirect_to book_path(book.id)
   #if @book.save
  end

  def index
  @book =Book.new
  end

  def show
    @book =Book.find(params[:id])
  end

  def update
   book = Book.find(parmars[:id])
   book.update(book_params)
   redirect_to book_path(book.id)

 end

  def edit
    @book =Book.find(params[:id])
    end

    private
  def book_parmars
    params.require(:book).permit(:title,:body)
  end
end
