class RemoveFieldsFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :name, :string
    remove_column :users, :document_emission_date, :date
    remove_column :users, :document_expire_date, :date
    remove_column :users, :main_phone, :string
    remove_column :users, :secondary_phone, :string
    remove_column :users, :document_number, :string
    remove_reference :users, :document_types, null: false, foreign_key: true
    
  end
end
