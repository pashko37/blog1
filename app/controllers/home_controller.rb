class HomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    render 'home/index'
  end
end
