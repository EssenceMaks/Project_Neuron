class ArtcommentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@soul = Soul.find(params[:soul_id])
		@article = Article.find(params[:article_id])
		@artcomment = Artcomment.create(params[:artcomment].permit(:artcontent))
		@artcomment.soul_id = current_user.id
		@artcomment.article_id = @article.id

		if @artcomment.save
			redirect_to soul_article_path(@soul, @article)
		else
			render 'new'
		end
	end
end
