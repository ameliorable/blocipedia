class WelcomeController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def show
  end

  def index
  end

  def about
  end
end
