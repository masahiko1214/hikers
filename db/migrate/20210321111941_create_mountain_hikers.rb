class CreateMountainHikers < ActiveRecord::Migration[6.0]
  def change
    create_table :mountain_hikers do |t|
      t.references :hiker, foreign_key: true
      t.references :mountain, foreign_key: true
      t.timestamps
    end
  end
end
