class ArticlesController < ApplicationController

	layout "punkt"

	def index
		@title = "Новости"
		@articles = Article.all
	end

	def show
		@article = Article.find params[:id]
	end

end