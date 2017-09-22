class CreateRecomendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recomendations do |t|

      t.timestamps
    end
  end
end
