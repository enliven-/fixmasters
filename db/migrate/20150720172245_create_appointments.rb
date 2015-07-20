class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text 			:comment
      t.datetime 	:time
      t.integer 	:service_provider_id
      t.integer 	:fix_id
      
      t.timestamps null: false
    end
  end
end
