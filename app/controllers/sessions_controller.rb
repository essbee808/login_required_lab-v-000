class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:user].blank?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end

end
