class AddFolioNumberToFolios < ActiveRecord::Migration
  def change
    add_column :folios, :folio_number, :string
  end
end
