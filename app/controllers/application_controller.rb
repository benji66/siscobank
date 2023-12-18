class ApplicationController < ActionController::Base 
	protect_from_forgery with: :exception
#	skip_before_action :verify_authenticity_token
#	protect_from_forgery with: :exception 
#	before_action :update_allowed_parameters , 	if:	:devise_controller? 

#	protected 
#	def update_allowed_parameters 
#		devise_parameter_sanitizer.permit( :sign_up ) { |u| u.permit( :email , :password, :name, :main_phone, :secondary_phone, :document_number, :document_emission_date, :document_expire_date )} 
#		devise_parameter_sanitizer.permit( :account_update ) { |u| u.permit( :email , :password , :current_password, :main_phone, :secondary_phone )} 
#	end 
end



