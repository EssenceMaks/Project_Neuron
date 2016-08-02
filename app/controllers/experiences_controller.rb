class ExperiencesController < ApplicationController
	before_action :find_soul
	before_action :find_experience, only: [:show, :edit, :update, :destroy]

	def soul_all_experiences

	end

	def index
		@experiences = Experience.where(soul_id: @soul).order("created_at DESC") #.reject { |p| p.id == @experience.id}
	end

	def new
		@experience = @soul.experiences.new
	end

	def create
		@experience = @soul.experiences.new experience_params	
		if @experience.save
			redirect_to soul_experience_path(@soul, @experience)
		else
			render 'new'
		end	
	end

	def show
		@experiences = Experience.where(soul_id: @soul).order("created_at DESC")  
		
	end

	def edit
		
	end

	def update
		if @experience.update experience_params
			redirect_to soul_experience_path(@soul, @experience), notice: "experience was succesfully updated!" 
		else
			render 'edit'
		end
	end

	def destroy
		@experience.destroy
		redirect_to soul_experiences_path(@soul)
	end


	private

	def experience_params
		params.require(:experience).permit(:startdate, :datecomment, :enddate, :title, :description, :workplaceurl)
	end

	def find_soul
		@soul = Soul.find(params[:soul_id])
	end

	def find_experience
		@experience = Experience.find(params[:id])
		#@soul = Soul.find(params[:soul_id])
		#@experience = @soul.experiences.find(params[:id])
		#@experience = experience.find_by(soul_id: params[:experience_id])
		#@experience = @soul.experiences.where(id: params[:id])
		#@message.comments.where(id: params[:id])
	end
end
