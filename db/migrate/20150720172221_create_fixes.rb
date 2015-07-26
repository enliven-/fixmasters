class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.integer :field_type_id
      t.text 		:comment
      t.integer :history_id
      t.integer :customer_id
      t.integer :status
      t.integer :field_type
      t.integer :flag_reason

      t.timestamps null: false
    end
  end
end
