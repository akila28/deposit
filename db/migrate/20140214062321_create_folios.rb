class CreateFolios < ActiveRecord::Migration
  def change
    create_table :folios do |t|
      t.datetime :folio_allocation_date
      t.integer :no_of_shares
      t.timestamps
    end
  end
end
