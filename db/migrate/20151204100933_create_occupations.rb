class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.integer :tournament_id
      t.integer :title_id
      t.integer :user_id
      t.boolean :taken, default: false

      t.timestamps null: false
    end
  end
end
