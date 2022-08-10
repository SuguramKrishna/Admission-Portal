# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_user
    return @current_user if @current_user

    user_id = session[:current_user_id]
    @current_user = BasicDetail.find(user_id) if user_id
  end

  def educational_user
    return @current_user if @current_user

    user_id = session[:educational]
    @current_user = user_id if user_id
  end

  def family_user
    return @current_user if @current_user

    user_id = session[:family]
    @current_user = user_id if user_id
  end

  def admin_user
    return @admin_user if @admin_user

    admin_user_id = session[:admin]
    @admin_user = admin_user_id if admin_user_id
  end
end
