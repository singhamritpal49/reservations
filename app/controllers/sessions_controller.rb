class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

   def new
   end

   def create
     user = User.find_by(username: params[:session][:username])
     if user && user.authenticate(params[:session][:password])
       session[:user_id] = user.id
       flash[:success] = "Successfully logged in #{@user.name}!"
       redirect_to restaurants_path
     else
       flash.now[:error] = "Your login failed"
       render 'new'
     end
   end


   def destroy
     session[:user_id] = nil
     flash[:success] = "You have been successfully logged out"
     redirect_to restaurants_path
   end

   private

   def logged_in_redirect
     if logged_in?
       flash[:error] = "You are logged in"
       redirect_to restaurants_path
     end
   end
end
