class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :sector
      t.string :qr
      t.timestamps
    end
  end
end
