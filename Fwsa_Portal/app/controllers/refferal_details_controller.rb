# frozen_string_literal: true

class RefferalDetailsController < ApplicationController
  def refferal; end

  def create
    current_user
    @refferal_detail = RefferalDetail.new(refferal_params)
    @refferal_detail.basic_details_id = current_user.id
    if @refferal_detail.save
      @basic_details = BasicDetail.all
      session[:current_user_id] = nil
      session[:educational] = false
      session[:family] = false
      render plain: 'Success'
    else
      flash[:error] = @refferal_detail.errors.full_messages.join(',')
    end
  end

  private

  def refferal_params
    params.require(:refferal_details).permit(:approach, :refferal_person_details, :refferal_person_name,
                                             :refferal_person_number, :refferal_person_relationship, :additional_information)
  end
end
