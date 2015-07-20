class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.integer :field_id
      t.text 		:comment
      t.text 		:history
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
