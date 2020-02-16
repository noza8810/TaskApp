class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  # before_action :set_user

  # def set_user
  #   @user = User.find(params[:user_id])
  # end
end
