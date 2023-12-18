class PeopleController < ApplicationController
	
	#protect_from_forgery with: :exception
  	#skip_before_action :verify_authenticity_token  
    before_action :authenticate_user!

	def index
		@people = Person.all
	end


	def show
		@person = Person.find(params[:id])
	end


	def new
		@person = Person.new
	end

	
	def create
		person_params_aux = person_params
		person_params_aux[:document_types_id] = DocumentType.find(params[:document_types_id])
		
		@person= Person.create! person_params_aux 

	  if @person.persisted?
		  redirect_to people_path, notice: "Person Created"
	  else
		  render :new, status: :unprocessable_entity
	  end
	end


	def edit
		@person = Person.find(params[:id])
	end


	def update
		@person = Person.find(params[:id])
		@person.update person_params_update
		if @person.update person_params_update
			redirect_to people_path, notice: "Person Updated"
		else
			render :edit, status: :unprocessable_entity
		end
	end


	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to people_path,
		status: :see_other, notice: "Person Deleted"
	end

	private

		# strong params
		def person_params
			params.require(:person).permit(:name, :email, :document_emission_date, :document_expire_date, :main_phone, :secondary_phone, :document_types_id, :document_number)
		end
		def person_params_update
			params.require(:person).permit(:name, :email, :main_phone, :secondary_phone)
		end

end
