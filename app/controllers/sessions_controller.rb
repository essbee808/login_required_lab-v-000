class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank?
      :current_user = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end

end
