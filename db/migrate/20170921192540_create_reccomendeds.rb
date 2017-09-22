class CreateReccomendeds < ActiveRecord::Migration[5.1]
  def change
    create_table :reccomendeds do |t|
      def up
        drop_table :reccomendeds
      end

      def down
        raise ActiveRecord::IrreversibleMigration
      end
      t.timestamps
    end
end
end
