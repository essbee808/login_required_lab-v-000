class SecretsController < ApplicationController
  before_action :require_login
  #skip_before_action :require_login, only: [:show]

  def new
  end

  def create
  end

  def show
    if session[:name]
      redirect_to "/"
    else
    end
  end


  private

  def require_login
    return head(:forbidden) unless session.include? :current_user
  end
end
