class ProjcommentsController < ApplicationController
		before_action :authenticate_user!
	def create
		@soul = Soul.find(params[:soul_id])
		@project = Project.find(params[:project_id])
		@projcomment = Projcomment.create(params[:projcomment].permit(:projcontent))
		@projcomment.soul_id = current_user.id
		@projcomment.project_id = @project.id
		#@projcomment.project_id = project.id 

		if @projcomment.save
			redirect_to soul_project_path(@soul, @project)
		else
			render 'new'
		end
	end
end
