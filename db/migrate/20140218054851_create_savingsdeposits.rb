class CreateSavingsdeposits < ActiveRecord::Migration
  def change
    create_table :savingsdeposits do |t|
      t.string :current_balance
      t.date :opened_on
      t.string :account_type
      t.string :status

      t.timestamps
    end
  end
end
