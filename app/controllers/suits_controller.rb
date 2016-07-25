class SuitsController < ApplicationController
	before_action :find_suit, only: [:show, :edit, :update, :destroy]
	before_action :find_soul, only: [:show]
	before_action :authenticate_user!, except: [:index, :show, :user_suits]
	
	def index
		@suit = Suit.all.order("created_at DESC")
		#@soul = Soul.find(params[:id])
	end

	def user_suits
		@suit = current_user.suits.all.order("created_at DESC")
		#@soul = Soul.find(params[:id])
		#@suit = Suit.find(params[:id])
	end

	def show
		#@souls = Soul.all.order("created_at DESC")
		@age = Time.now
		
	end

	def new
	  #	@suit = Suit.new
		@suit = current_user.suits.build
	end

	def create
      # @suit = Suit.new(suit_params)
		@suit = current_user.suits.build(suit_params)

		if @suit.save
			redirect_to @suit, notice: "The Suit is sewed"
		else
			render 'new'
		end
	end

	def edit
		
	end
	
	def update
		if @suit.update(suit_params)
			redirect_to @suit
		else
			render 'edit'
		end
	end

	def destroy
		@suit.destroy
		redirect_to root_path, notice: "Sent to rags"
	end

	private
		def suit_params
			params.require(:suit).permit(:title, :description, :image, my_skills_attributes: [:id, :skill, :_destroy], 
				interested_ins_attributes: [:id, :futureskill, :_destroy], educations_attributes: [:id, :college, :_destroy], 
				additional_educations_attributes: [:id, :academy, :_destroy])
		end

		def find_suit
			@suit = Suit.find(params[:id])
		end

		def find_soul
			@soul = Soul.find(params[:id])			
		end
end
