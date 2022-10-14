class ApplicationController < ActionController::Base
    before_action :set_book, only: [:show, :edit, :update, :destroy]

    def index
        @books = Book.all
    end

    def show
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            redirect_to @book
        else
            render:new
        end
    end

    def edit
    end

    def update
        if @book.update(book_params)
            redirect_to @book, notice: "Book was successfully updated"
        else
            render :edit
        end
    end

    private

        def set_book
            @book = Book.find(params[:id])
        end

        def book_params
            params.require(:book).permit(:title, :author, :description, :status, :rating, :review)
        end
end
