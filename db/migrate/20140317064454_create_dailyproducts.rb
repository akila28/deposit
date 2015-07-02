class CreateDailyproducts < ActiveRecord::Migration
  def change
    create_table :dailyproducts do |t|
      t.date :from_date
      t.date :to_date
      t.integer :no_of_days
      t.float :balance
      t.float :rate_of_interest
      t.float :interest

      t.timestamps
    end
  end
end
