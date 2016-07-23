class PersonsController < ApplicationController
	before_action :find_person, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:show]

	def index # your own page and for admin in future
		
	end

	def show # current user person page
		
	end

	def page # your own page
		
	end
	
	def new
		@person = current_user.persons.build
	end

	def create
		@person = current_user.persons.build(person_params)

		if @person.save
			redirect_to @person, notice: "The Suit is sewed"
		else
			render 'new'
		end
	end

	def update
		if @person.update(person_params)
			redirect_to @person
		else
			render 'edit'
		end
		
	end

	def edit
		
	end

	def destroy
		
	end

	private
		def person_params
			params.require(:person).permit(:name, :surname, :nickname, :born, :city, :mob_number, :facebook, :github, :linkid, :skype, :history)
		end

		def find_person
			@person = Person.find(params[:id])	
		end

end
