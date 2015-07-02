class RemoveTransactionAmountFromSavingsdeposittransactions < ActiveRecord::Migration
  def up
    remove_column :savingsdeposittransactions, :transaction_amount
  end

  def down
    add_column :savingsdeposittransactions, :transaction_amount, :integer
  end
end
