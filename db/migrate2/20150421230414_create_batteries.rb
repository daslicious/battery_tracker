class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :size
      t.string :technology
      t.string :brand

      t.timestamps null: false
    end
  end
end
