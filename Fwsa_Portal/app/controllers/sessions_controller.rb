class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:email] == "fwsa@admission.gmail.com" and params[:password] == "FWSA@admin"
      session[:admin] = true
      render plain: "Success"
    else
      render plain: "Failed"
    end
  end
end
