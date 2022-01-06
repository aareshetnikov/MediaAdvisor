class BookController < ApplicationController
  def index
    @books = Book.all

    @books = @books.where('name ilike ?', "%#{params[:q]}%") if params[:q] && params[:q] != ''
  end
  def bookpage()
    @book = Book.find(params[:id])
  end
end