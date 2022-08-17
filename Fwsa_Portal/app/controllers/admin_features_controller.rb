# frozen_string_literal: true

class AdminFeaturesController < ApplicationController
  def dashboard
    if admin_user
      @application_count = RefferalDetail.all.length
      @diploma_count = EducationalDetail.where(current_class: 'Diploma').length
      @college_count = EducationalDetail.where('current_class LIKE?', '%Degree Course%').length
      @selected = Status.where(status: 1).length
      render 'admin_features/dashboard'

    else
      redirect_to '/admin_signin'
    end
  end

  def gallery_adding
    if admin_user
      render 'admin_features/gallery_adding'
    else
      redirect_to '/admin_signin'
    end
  end

  def staff_adding
    if admin_user
      render 'admin_features/staff_adding'
    else
      redirect_to '/admin_signin'
    end
  end

  def staff_attach
    @staffs = Staff.all
    staff = Staff.new(staff_params)
    staff.profile.attach(staff_params[:profile])
    if staff.save
      render 'admin_features/staff'
    else
      render plain: 'Failed'
    end
  end

  def images_attach
    @gallery = Gallery.new
    @gallery.images.attach(params[:images])
    if @gallery.save
      render 'admin_features/gallery'
    else
      render plain: 'Failed'
    end
  end

  def gallery
    if admin_user
      @gallery = Gallery.all
      render 'admin_features/gallery'
    else
      redirect_to '/admin_signin'
    end
  end

  def staff
    if admin_user
      @staffs = Staff.all
      render 'admin_features/staff'
    else
      redirect_to '/admin_signin'
    end
  end

  def report
    if admin_user
      @basic_details = BasicDetail.all
      render 'admin_features/report'
    else
      redirect_to '/admin_signin'
    end
  end

  def listing
    if admin_user
      @basic_details = BasicDetail.all
      render 'admin_features/listing'
    else
      redirect_to '/admin_signin'
    end
  end

  def details
    id = params[:id]
    get_id = BasicDetail.find_by(id: id)
    $std_details = get_id
    redirect_to '/admin_features/detailed_view'
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :profile, :designation, :experience, :phone_number, :email_id, :age)
  end
end
