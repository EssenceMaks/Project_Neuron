class QuotycommentsController < ApplicationController
		before_action :authenticate_user!

	def create
		@soul = Soul.find(params[:soul_id])
		@quotation = Quotation.find(params[:quotation_id])
		@quotycomment = Quotycomment.create(params[:quotycomment].permit(:quotycontent))
		@quotycomment.soul_id = current_user.id
		@quotycomment.quotation_id = @quotation.id
		#@quotycomment.quotation_id = quotation.id 

		if @quotycomment.save
			redirect_to soul_quotation_path(@soul, @quotation)
		else
			render 'new'
		end
	end	
end
