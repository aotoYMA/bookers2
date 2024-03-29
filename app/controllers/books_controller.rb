class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
     redirect_to book_path
    else
     render :new
    end
  end
  
  
  def index
    @books = Book.all
  end  

  def show
    @books = Book.all
  end
  
  def destroy
  end  
  
  def edit
    @book = book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end  
  

    private

  def book_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
