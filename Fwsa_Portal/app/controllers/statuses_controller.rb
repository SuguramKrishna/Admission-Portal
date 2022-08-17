# frozen_string_literal: true

class StatusesController < ApplicationController
  def create
    status = Status.new(status: params[:status], basic_detail_id: params[:basic_detail_id])
    if status.save
      render plain: 'Success'
    else
      render plain: 'Error'
    end
  end
end
