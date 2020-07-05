class BooksController < ApplicationController
before_action :authenticate_user!

  def index
    @book = Book.new
  	@books = Book.all
    @users = User.all
    @user = current_user
  end

  def show
  	@book = Book.find(params[:id])
    @book_new = Book.new
    @book_comment = BookComment.new
    @book_comments = @book.book_comments
  end


  def edit
  	@book = Book.find(params[:id])
    @user = current_user
    if @book.user_id != current_user.id
      redirect_to books_path
    end
  end

  def create
  	@book = Book.new(book_params)
    @user = current_user
    @books = Book.all
  	@book.user_id = current_user.id
    if @book.save
    	flash[:notice] = "You have creatad book successfully."
    	redirect_to book_path(@book)
    else
    	render "index"
    end
  end
  def destroy
  	book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
          flash[:notice] = "You have updated book successfully."
          redirect_to book_path(@book)
        else
          render "edit"
        end

  end

  private
    def book_params
      params.require(:book).permit(:title, :body,)
    end

end

