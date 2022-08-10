# frozen_string_literal: true

class AdminFeaturesController < ApplicationController
  def dashboard
    @application_count = RefferalDetail.all.length
    @diploma_count = EducationalDetail.where(current_class: 'Diploma').length
    @college_count = EducationalDetail.where('current_class LIKE?', '%Degree Course%').length
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
    staff = Staff.new(staff_params)
    staff.aadhar_card_images.attach(params[:aadhar_card_images])
    if staff.save
      render plain: 'Success'
    else
      render plain: 'Failed'
    end
  end

  def images_attach
    gallery = Gallery.new
    gallery.images.attach(params[:images])
    if gallery.save
      render plain: 'Success'
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

  private

  def staff_params
    params.require(:staff).permit(:name, :designation, :experience, :phone_number, :email_id, :age,
                                  aadhar_card_images: [])
  end
end
