class AddForeignKeyToFolios < ActiveRecord::Migration
  def change
    add_column :folios, :customer_id, :integer
  end
end
