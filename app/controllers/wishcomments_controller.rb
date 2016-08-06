class WishcommentsController < ApplicationController
		before_action :authenticate_user!
	def create
		@soul = Soul.find(params[:soul_id])
		@wish = Wish.find(params[:wish_id])
		@wishcomment = Wishcomment.create(params[:wishcomment].permit(:wishcontent))
		@wishcomment.soul_id = current_user.id
		@wishcomment.wish_id = @wish.id

		if @wishcomment.save
			redirect_to soul_wish_path(@soul, @wish)
		else
			render 'new'
		end
	end
end
