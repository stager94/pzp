class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_title

  def home_page
  	@home = StaticPage.where(page_type: "main").first 
    @tags = HomeTag.active
  	# @title = "Главная страница"
  end

private
	
	def set_title
		@title_suffix = "Производственно-Заготовительное Предприятие-2 г.Киев"
    @menus = MenuItem.all
	end

end