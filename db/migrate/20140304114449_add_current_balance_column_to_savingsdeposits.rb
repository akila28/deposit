class AddCurrentBalanceColumnToSavingsdeposits < ActiveRecord::Migration
  def change
    add_column :savingsdeposits, :current_balance, :integer
  end
end
