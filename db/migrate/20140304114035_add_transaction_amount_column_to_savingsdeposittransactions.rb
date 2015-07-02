class AddTransactionAmountColumnToSavingsdeposittransactions < ActiveRecord::Migration
  def change
    add_column :savingsdeposittransactions, :transaction_amount, :integer
  end
end
