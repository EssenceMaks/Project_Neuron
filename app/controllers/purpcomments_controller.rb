class PurpcommentsController < ApplicationController
		before_action :authenticate_user!
	def create
		@soul = Soul.find(params[:soul_id])
		@purpose = Purpose.find(params[:purpose_id])
		@purpcomment = Purpcomment.create(params[:purpcomment].permit(:purpcontent))
		@purpcomment.soul_id = current_user.id
		@purpcomment.purpose_id = @purpose.id

		if @purpcomment.save
			redirect_to soul_purpose_path(@soul, @purpose)
		else
			render 'new'
		end
	end
end
