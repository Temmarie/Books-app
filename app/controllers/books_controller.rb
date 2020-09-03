class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new edit]

  def index
    @user = current_user
    @books = Book.where(user: current_user).includes([:groups])
  end

  def show
    @average_review = if @book.reviews.blank?
                        0
                      else
                        @book.reviews.average(:rating).round(2)
                      end
  end

  def new
    @book = current_user.books.build
  end

  def edit; end

  def create
    @book = current_user.books.build(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def external
    @books = Book.where(user: User.where.not(id: current_user.id)).includes([:groups])
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :description, :image, group_ids: [])
  end
end
