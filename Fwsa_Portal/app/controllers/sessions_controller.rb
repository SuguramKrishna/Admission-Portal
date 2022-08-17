# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if (params[:email] == 'fwsa@admission.gmail.com') && (params[:password] == 'FWSA@admin')
      session[:admin] = true
      render '/admin_features/dashboard'
    else
      render 'admin_signin'
    end
  end

  def destroy
    session[:admin] = false
    redirect_to admin_session_path
  end
end
