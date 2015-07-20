class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :fix_id
      t.integer :service_provider_id

      t.timestamps null: false
    end
  end
end
