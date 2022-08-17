# frozen_string_literal: true

class AdmissionsController < ApplicationController
  @@searched = 0
  @@email = nil
  def index; end

  def gallery
    @gallery = Gallery.all
  end

  def search
    @searched = searched_returner
    @email = email_returner
    @booking_detail_exist = BasicDetail
    @@searched = 0
    @@email = nil
  end

  def staff
    @staffs = Staff.all if admin_user
  end

  def search_by_mail
    @@searched = 1
    @@email = params[:email]
    redirect_to 'admissions/search'
  end

  def searched_returner
    @@searched
  end

  def email_returner
    @@email
  end
end
