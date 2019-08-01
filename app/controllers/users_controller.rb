class UsersController < ApplicationController
  # has_secure_password

def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end


def create
  @user = User.create(user_params)
  if @user.valid?
    session[:user_id] = @user.id
    redirect_to @user
  else
    flash[:errors] = @user.errors.full_messages
    redirect_to new_user_path
  end
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
  params.require(:user).permit(:name, :phone, :username, :password_digest)
end

end
