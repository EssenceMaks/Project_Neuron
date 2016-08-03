class SoulsController < ApplicationController
	before_action :find_soul, only: [:show, :edit, :update]
	before_action :authenticate_user!, except: [:show]

	def index # your own page and for admin in future
		#@suit = Soul.all.order("created_at DESC")
		@soul = current_user.soul

	end

	def home
		@soul = current_user.soul
	end

	def cabinet
		
	end

	def organizer
		
	end

	def show # current user soul page
		@soul = Soul.find(params[:id])
		@projects = Project.where(soul_id: @soul).order("created_at DESC")
	end

	def page # your own page
		
	end
	
	def new
		#@soul = current_user.build_soul
		@soul = current_user.soul.new
		#@soul = Soul.new
	end

	def create
		#@soul = Soul.new(soul_params)
		#@soul = current_user.build_soul(soul_params)
		@soul = current_user.soul.new soul_params	
		if @soul.save
			redirect_to soul_path(params[:id]), notice: "The Soul is sewed"
		else
			render 'new'
		end
	end

	def update
		if @soul.update(soul_params)
			redirect_to @soul
		else
			render 'edit'
		end
		
	end

	def edit
		
	end

	def destroy
		
	end

	private
		def soul_params
			params.require(:soul).permit(:name, :surname, :nickname,
			 :born, :city, :mob_number, :facebook, :github, :linkid,
			  :skype, :history, :imgsoul)
		end

		def find_soul
			@soul = Soul.find(params[:id])	
		end

end
