class WishesController < ApplicationController
	before_action :find_soul
	before_action :find_wish, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

	def soul_all_wishes

	end

	def index
		@wishes = Wish.where(soul_id: @soul).order("created_at DESC") #.reject { |p| p.id == @wish.id}
	end

	def new
		@wish = @soul.wishes.new
	end

	def create
		@wish = @soul.wishes.new wish_params	
		if @wish.save
			redirect_to soul_wish_path(@soul, @wish)
		else
			render 'new'
		end	
	end

	def show
		@wishes = Wish.where(soul_id: @soul).order("created_at DESC")  
		@wishcomments = Wishcomment.where(wish_id: @wish)
	end

	def edit
		
	end

	def update
		if @wish.update wish_params
			redirect_to soul_wish_path(@soul, @wish), notice: "wish was succesfully updated!" 
		else
			render 'edit'
		end
	end

	def destroy
		@wish.destroy
		redirect_to soul_wishes_path(@soul)
	end

		def upvote
			@wish.upvote_by current_user
			redirect_to :back
		end

		def downvote
			@wish.downvote_from current_user
			redirect_to :back
		end

	private

	def wish_params
		params.require(:wish).permit(:title, :description, :url, :imgwish)
	end

	def find_soul
		@soul = Soul.find(params[:soul_id])
	end

	def find_wish
		@wish = Wish.find(params[:id])
		#@soul = Soul.find(params[:soul_id])
		#@wish = @soul.wishes.find(params[:id])
		#@wish = wish.find_by(soul_id: params[:wish_id])
		#@wish = @soul.wishes.where(id: params[:id])
		#@message.comments.where(id: params[:id])
	end
end
