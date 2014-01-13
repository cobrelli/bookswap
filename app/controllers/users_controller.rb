class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
  	@users = User.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:success] = "Lisäys onnistui!"
      redirect_to "/"
    else
      render 'new'
    end
  end

  def user_params
  	params.require(:user).permit(:name, :email)
  end
end
