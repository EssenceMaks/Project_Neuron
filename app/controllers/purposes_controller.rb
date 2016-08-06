class PurposesController < ApplicationController
	before_action :find_soul
	before_action :find_purpose, only: [:show, :edit, :update, :destroy]

	def soul_all_purposes

	end

	def index
		@purposes = Purpose.where(soul_id: @soul).order("created_at DESC") #.reject { |p| p.id == @purpose.id}
	end

	def new
		@purpose = @soul.purposes.new
	end

	def create
		@purpose = @soul.purposes.new purpose_params	
		if @purpose.save
			redirect_to soul_purpose_path(@soul, @purpose)
		else
			render 'new'
		end	
	end

	def show
		@purposes = Purpose.where(soul_id: @soul).order("created_at DESC")  
		@purpcomments = Purpcomment.where(purpose_id: @purpose)
	end

	def edit
		
	end

	def update
		if @purpose.update purpose_params
			redirect_to soul_purpose_path(@soul, @purpose), notice: "purpose was succesfully updated!" 
		else
			render 'edit'
		end
	end

	def destroy
		@purpose.destroy
		redirect_to soul_purposes_path
	end


	private

	def purpose_params
		params.require(:purpose).permit(:purport, :description, :url, :imgpurpose)
	end

	def find_soul
		@soul = Soul.find(params[:soul_id])
	end

	def find_purpose
		@purpose = Purpose.find(params[:id])
		#@soul = Soul.find(params[:soul_id])
		#@purpose = @soul.purposes.find(params[:id])
		#@purpose = purpose.find_by(soul_id: params[:purpose_id])
		#@purpose = @soul.purposes.where(id: params[:id])
		#@message.comments.where(id: params[:id])
	end
end
