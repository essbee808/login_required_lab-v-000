class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if :current_user
      redirect_to 'secrets#new'
    else
      
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
