class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :address_type
      t.integer :property_type
      t.string 	:line1
      t.string 	:line2
      t.string 	:line3
      t.string 	:line4
      t.string  :line5
      t.string 	:line6

      t.timestamps null: false
    end
  end
end
