class CreateSpFieldTypeSets < ActiveRecord::Migration
  def change
    create_table :sp_field_type_sets do |t|
    	t.integer :service_provider_id
    	t.integer :field_type_id
    	t.boolean :primary

      t.timestamps null: false
    end
  end
end
