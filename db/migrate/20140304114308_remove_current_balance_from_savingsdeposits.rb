class RemoveCurrentBalanceFromSavingsdeposits < ActiveRecord::Migration
  def up
    remove_column :savingsdeposits, :current_balance
  end

  def down
    add_column :savingsdeposits, :current_balance, :integer
  end
end
