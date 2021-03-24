class CreateTrekkings < ActiveRecord::Migration[6.0]
  def change
    create_table :trekkings do |t|
      t.integer :hiker_id
      t.integer :mountain_id
      t.timestamps
    end
  end
end
