class AddQrCodeToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :tables, :qrCode_uid,  :string
	add_column :tables, :qrCode_name, :string
  end
end
