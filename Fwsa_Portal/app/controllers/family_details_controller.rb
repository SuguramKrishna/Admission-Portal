# frozen_string_literal: true

class FamilyDetailsController < ApplicationController
  def family
    redirect_to '/refferal_details/refferal' if family_user == true
  end

  def create
    current_user
    @family_detail = FamilyDetail.new(family_params)
    @family_detail.basic_details_id = current_user.id
    if @family_detail.save
      session[:family] = true
      redirect_to '/refferal_details/refferal'
    else
      flash[:error] = @family_detail.errors.full_messages.join(',')
    end
  end

  private

  def family_params
    params.require(:family_detail).permit(:parent_detail, :mother_qualification, :father_qualification,
                                          :mother_occupation, :mother_income, :father_occupation, :father_income, :other_income, :electricity_amount)
  end
end
