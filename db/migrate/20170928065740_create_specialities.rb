class CreateSpecialities < ActiveRecord::Migration[5.1]
  def change
  	drop_table :specialities
    create_table :specialities do |t|
      t.string :name

      t.timestamps
    end
  end
end
