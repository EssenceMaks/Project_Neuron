class ResumesController < ApplicationController
	before_action :find_soul
	before_action :find_resume, only: [:show, :edit, :update, :destroy]

	def soul_all_resumes

	end

	def index
		@resumes = Resume.where(soul_id: @soul).order("created_at DESC") #.reject { |p| p.id == @resume.id}
	end

	def new
		@resume = @soul.resumes.new
	end

	def create
		@resume = @soul.resumes.new resume_params	
		if @resume.save
			redirect_to soul_resume_path(@soul, @resume)
		else
			render 'new'
		end	
	end

	def show
		@resumes = Resume.where(soul_id: @soul).order("created_at DESC")  
		
	end

	def edit
		
	end

	def update
		if @resume.update resume_params
			redirect_to soul_resume_path(@soul, @resume), notice: "resume was succesfully updated!" 
		else
			render 'edit'
		end
	end

	def destroy
		@resume.destroy
		redirect_to soul_resumes_path
	end


	private

	def resume_params
		params.require(:resume).permit(:suitname, :suitdescription, :workmail, :onlineswitch)
	end

	def find_soul
		@soul = Soul.find(params[:soul_id])
	end

	def find_resume
		@resume = Resume.find(params[:id])
		#@soul = Soul.find(params[:soul_id])
		#@resume = @soul.resumes.find(params[:id])
		#@resume = resume.find_by(soul_id: params[:resume_id])
		#@resume = @soul.resumes.where(id: params[:id])
		#@message.comments.where(id: params[:id])
	end
end
