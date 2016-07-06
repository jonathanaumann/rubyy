class AddNumberToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :number, :string
  end
end
