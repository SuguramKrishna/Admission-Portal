# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    # Session page method
  end

  # def create
  #   if (params[:email] == 'fwsa@admission.gmail.com') && (params[:password] == 'FWSA@admin')
  #     session[:admin] = true
  #     render '/admin_features/dashboard'
  #   else
  #     render 'admin_signin'
  #   end
  # end

  def admin_login
    @user = Admin.find_by(email: params[:email])
    p @user.id
    p @user.password
    password = params[:password]
    p password
    if @user.password == password
      # p @user
      # if @user
      session[:current_user_id] = @user.id
      p session[:current_user_id]
      redirect_to '/admin_features/dashboard'

    else
      # flash[:error] = 'Invalid Email or Password'
      # redirect_to '//login'
      render plain: 'Check'
    end
  end

  # def logout
  #   session[:current_user_id] = nil
  #   @current_user = nil
  #   redirect_to '/'
  # end

  def destroy
    session[:admin] = false
    redirect_to admin_session_path
  end
end
