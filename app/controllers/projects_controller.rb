class ProjectsController < ApplicationController

	before_action :find_soul
	before_action :find_project, only: [:show]

	def new
		@project = @soul.projects.new
	end

	def create
		@project = @soul.projects.new project_params	
		if @project.save
			redirect_to soul_project_path(@project, @soul)
		else
			render 'new'
		end	
	end

	def show

		
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :url, :team, :client)
	end

	def find_soul
		@soul = Soul.find(params[:id])
	end

	def find_project
		@project = Project.find(params[:id])
	end
end
