class AddDocumentTypeIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :document_types, null: false, foreign_key: true
  end
end
