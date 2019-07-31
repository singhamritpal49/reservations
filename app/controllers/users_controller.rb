class UsersController < ApplicationController


def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
  @reservation = Reservation.new
  @restaurants = Restaurant.all
end

def new
  @user = User.new
end


def create
  @user = User.create(user_params)
  redirect_to @user
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to @user
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end


#private Method
def user_params
  params.require(:user).permit(:name, :phone)
end



end
