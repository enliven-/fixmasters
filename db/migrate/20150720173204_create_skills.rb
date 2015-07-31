class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.string :name
      t.integer :field_type_id
      
      t.timestamps null: false
    end
  end
end
