# frozen_string_literal: true

class StatusesController < ApplicationController
  def create
    puts 'Hello'
    status = Status.new(status: params[:status], basic_detail_id: params[:basic_detail_id])
    if status.save
      status_name = case status.status
                    when 1
                      'selected'
                    when 2
                      'rejected'
                    when 3
                      'wait listed'
                    else
                      'not updated'
                    end
      flash[:error] = "Successfully #{status_name} the student"
      redirect_to '/admin_features/dashboard'
    else
      render plain: 'Error'
    end
  end
end
