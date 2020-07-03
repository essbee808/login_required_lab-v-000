class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to "/login"
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
