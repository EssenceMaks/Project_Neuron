class HobcommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@soul = Soul.find(params[:soul_id])
		@hobby = Hobby.find(params[:hobby_id])
		@hobcomment = Hobcomment.create(params[:hobcomment].permit(:hobcontent))
		@hobcomment.soul_id = current_user.id
		@hobcomment.hobby_id = @hobby.id

		if @hobcomment.save
			redirect_to soul_hobby_path(@soul, @hobby)
		else
			render 'new'
		end
	end
end
