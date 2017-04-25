class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_menus
  before_action :set_categories


  private
  def set_menus
    @menus = Menu.all
  end

  def set_categories
    @categories = Category.all
  end
end
