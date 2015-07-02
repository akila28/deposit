class AddForeignKeyToDailyproducts < ActiveRecord::Migration
  def change
    add_column :dailyproducts, :savingsdeposit_id, :integer
  end
end
