class CreateSpSkillSets < ActiveRecord::Migration
  def change
    create_table :sp_skill_sets do |t|
    	t.integer :service_provider_id
    	t.integer :skill_id
    	t.boolean :primary

      t.timestamps null: false
    end
  end
end
