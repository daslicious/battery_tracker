class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.references :battery, index: true, foreign_key: true
      t.references :device, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
