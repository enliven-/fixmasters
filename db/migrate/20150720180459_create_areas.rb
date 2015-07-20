class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string 	:name
      t.string  :city
      t.string  :pin_code
      t.string  :population_size
      t.integer :societies_count

      t.timestamps null: false
    end
  end
end
