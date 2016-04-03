class StaticPagesController < ApplicationController
	
	layout "punkt"

	def show
		@page = StaticPage.find(params[:id]) 	
	end
end