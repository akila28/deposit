class AddForeignKeyToSavingsdeposittransactions < ActiveRecord::Migration
  def change
    add_column :savingsdeposittransactions, :savingsdeposit_id, :integer
  end
end
