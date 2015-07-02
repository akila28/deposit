class AddAddressColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Address, :string
  end
end
