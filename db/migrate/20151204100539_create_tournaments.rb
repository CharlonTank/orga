class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
