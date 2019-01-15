class ArticlesController < ApplicationController

	def new
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		#to see what params we get from article/new page
		#render plain: params[:article].inspect
		@article = Article.new(article_params)

		if @article.valid?
			@article.save
			redirect_to @article #to avoid 2ble submiting
		else
			render action: 'new'
		end
	end

	private

	def article_params
		params.require(:article).permit(:title, :text)
	end

end 