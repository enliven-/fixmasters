class CreateSpFieldSets < ActiveRecord::Migration
  def change
    create_table :sp_field_sets do |t|

      t.timestamps null: false
    end
  end
end
