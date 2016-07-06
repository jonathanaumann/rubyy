class AddNameToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :description, :string
  end
end
