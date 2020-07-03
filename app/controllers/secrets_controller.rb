class SecretsController < ApplicationController
  before_action :require_login

  def show
    if current_user
      
    else
      redirect_to "/login"
    end
  end

  def index
  end

  def create
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :current_user
  end
end
