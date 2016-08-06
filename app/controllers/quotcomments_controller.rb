class QuotcommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@quotation = Quotation.find(params[:quotation_id])
		@quotcomment = Quotcomment.create(params[:quotcomment].permit(:qoutcontent))
		@quotcomment.soul_id = current_user.id
		@quotcomment.quotation_id = @quotation.id

		if @quotcomment.save
			redirect_to soul_quotation_path(@quotation)
		else
			render 'new'
		end
	end
end
