class AddForeignKeyToSavingsdeposits < ActiveRecord::Migration
  def change
    add_column :savingsdeposits, :customer_id, :integer
  end
end
