# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

  DocumentType.destroy_all
  User.destroy_all

  DocumentType.create(name: "V", description: "Venezolano")
  DocumentType.create(name: "E", description: "Extranjero")  
  DocumentType.create(name: "J", description: "Juridico")
  DocumentType.create(name: "G", description: "Gobierno")

  User.create! :email => 'admin@admin.com', :password => 'admin123', :password_confirmation => 'admin123'

#  @document_type = DocumentType.find_by_name('J')
  
#  p @document_type.id

#  Person.create! :email=>'correo@correo.com', :name => 'aaa', :document_emission_date=>'2020-12-12', :document_expire_date=>'2023-12-12', :main_phone=>'152', :secondary_phone=>'321', :document_types_id=> , :document_number=>'152'

  