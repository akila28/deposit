class AddCodeColumnToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :code, :string
  end
end
