class AddLookupToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :lookup, :integer
    add_index :devices, :lookup
  end
end
