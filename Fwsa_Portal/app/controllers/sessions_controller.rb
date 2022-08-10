# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if (params[:email] == 'fwsa@admission.gmail.com') && (params[:password] == 'FWSA@admin')
      session[:admin] = true
      render plain: 'Success'
    else
      render plain: 'Failed'
    end
  end
end
