class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :document_emission_date, :date
    add_column :users, :document_expire_date, :date
    add_column :users, :main_phone, :string
    add_column :users, :secondary_phone, :string
    add_column :users, :document_number, :string
  end
end
