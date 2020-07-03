class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def new
  end

  def show
    if current_user == params[:name]
      render :show
    else
      redirect_to '/login'
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
