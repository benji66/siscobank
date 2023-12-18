class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :email
      t.string :name

      t.timestamps
    end

    add_column :people, :document_emission_date, :date
    add_column :people, :document_expire_date, :date
    add_column :people, :main_phone, :string
    add_column :people, :secondary_phone, :string
    add_column :people, :document_number, :string

    add_index :people, :email, unique: true
    add_reference :people, :document_types, null: false, foreign_key: true
  end
end
