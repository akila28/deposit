class AddBankToSavingsdeposittransactions < ActiveRecord::Migration
  def change
    add_column :savingsdeposittransactions, :bank, :string
  end
end
