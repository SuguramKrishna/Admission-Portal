# frozen_string_literal: true

class AdmissionsController < ApplicationController
  def index; end

  def gallery
    @gallery = Gallery.all
  end

  def staff
    @staffs = Staff.all if admin_user
  end
end
