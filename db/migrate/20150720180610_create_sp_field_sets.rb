class CreateSpFieldSets < ActiveRecord::Migration
  def change
    create_table :sp_field_sets do |t|
    	t.integer :service_provider_id
    	t.integer :field_id
    	t.boolean :primary

      t.timestamps null: false
    end
  end
end
