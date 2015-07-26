class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    	t.integer :fix_id
    	t.text    :events, default: ""

      t.timestamps null: false
    end
  end
end
