class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :sex
      t.text :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.text :PAN
      t.string :status
      t.integer :user_id
      t.timestamps
    end
  end
end
