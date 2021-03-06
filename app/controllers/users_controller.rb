class UsersController < ApplicationController


	def show
		@user = User.find(params[:id])
		@books = @user.books
		@book_new = Book.new
		@book = User.find(params[:id])
		
	end

	def index
		@book_new = Book.new
		@users = User.all
		@user = current_user
		@book = Book.new
	end

	def edit
		@user = User.find(params[:id])

	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
        redirect_to user_path(@user.id)

	end

	private
	def user_params
		params.require(:user).permit(:name, :introduction, :image)

	end

end
