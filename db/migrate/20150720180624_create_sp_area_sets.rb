class CreateSpAreaSets < ActiveRecord::Migration
  def change
    create_table :sp_area_sets do |t|

      t.timestamps null: false
    end
  end
end
