class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|

      t.timestamps null: false
    end
  end
end
