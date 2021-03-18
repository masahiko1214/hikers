class CreateMountains < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
      t.string :name,null: false
      t.text :explanation, null: false
      t.integer :elevation, null: false
      t.integer :level_id, null: false
      t.integer :time_mountain_id, null: false
      t.integer :prefecture_id, null: false
      t.string :municipality, null: false
      t.string :address, null: false
      t.timestamps
    end
  end
end
