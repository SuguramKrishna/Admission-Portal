# frozen_string_literal: true

class AdmissionsController < ApplicationController
  @@searched = 0
  @@email = nil
  def index
    # Index page method
  end

  def gallery
    @gallery = Gallery.all
  end

  def search
    @searched = searched_returner
  end

  def staff
    @staffs = Staff.all

    # render 'staff'
  end

  def search_by_mail
    # @@searched = 1
    # @@email = params[:email]
    # @searched =  searched_returner
    # p @searched
    # @email = email_returner
    # p @email
    # @booking_detail_exist = BasicDetail.all
    # @bd = nil
    # BasicDetail.all.each do |bd|
    #   if bd.email_id == @email
    #       @bd = bd.id
    #       break
    #   end
    # end
    # @sd = nil
    # if @bd != nil
    #   Status.all.each do |status|
    #     if status.basic_detail_id == @bd
    #       @sd = status.status
    #     end
    #   end
    # end
    # @@searched = 0
    # @@email = nil
    email = params[:email]
    @bd = BasicDetail.find_by(email_id: email)
    p '00000000'
    if @bd
      @@sd = Status.find_by(basic_detail_id: @bd.id)
      if $sd
        p "status : #{@@sd.status}"
        p "id : #{@@sd.id}"
      end
    else
      # flash[:error] = "Not registered"

    end
    render 'search'
  end

  def searched_returner
    @@searched
  end

  def email_returner
    @@email
  end
end
