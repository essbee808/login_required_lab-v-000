class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
  end

  def show
    @secret = S
  end

  def require_login
    return head(:forbidden) unless session.include? :current_user
  end
end
