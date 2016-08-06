class ArticlesController < ApplicationController

	before_action :find_soul
	before_action :find_article, only: [:show, :edit, :update, :destroy]

	def soul_all_articles

	end

	def index
		@articles = Article.where(soul_id: @soul).order("created_at DESC") #.reject { |p| p.id == @article.id}
	end

	def new
		@article = @soul.articles.new
	end

	def create
		@article = @soul.articles.new article_params	
		if @article.save
			redirect_to soul_article_path(@soul, @article)
		else
			render 'new'
		end	
	end

	def show
		@articles = Article.where(soul_id: @soul).order("created_at DESC")  
		@artcomments = Artcomment.where(article_id: @article)
	end

	def edit
		
	end

	def update
		if @article.update article_params
			redirect_to soul_article_path(@soul, @article), notice: "article was succesfully updated!" 
		else
			render 'edit'
		end
	end

	def destroy
		@article.destroy
		redirect_to soul_articles_path(@soul)
	end


	private

	def article_params
		params.require(:article).permit(:title, :description, :url, :imgarticle)
	end

	def find_soul
		@soul = Soul.find(params[:soul_id])
	end

	def find_article
		@article = Article.find(params[:id])
	end

end
