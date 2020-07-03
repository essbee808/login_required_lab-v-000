class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def new
  end

  def create
  end

  def show
    if current_user == params[:name]
      
    else
      redirect_to '/login'
    end
  end


  private

  def require_login
    return head(:forbidden) unless session.include? :current_user
  end
end
