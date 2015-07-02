class CreateSavingsdeposittransactions < ActiveRecord::Migration
  def change
    create_table :savingsdeposittransactions do |t|
      t.date :transaction_date
      t.string :status
      t.string :transaction_amount
      t.string :transaction_mode
      t.string :transaction_type
      t.string :particulars
      t.string :comments

      t.timestamps
    end
  end
end
