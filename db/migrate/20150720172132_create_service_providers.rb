class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string 	:first_name
      t.string 	:last_name
      t.string  :phone
      t.string  :phone_alt
      t.date 		:join_date
      t.integer :kyc_profile_id
      t.integer :rating_profile_id
      t.boolean :active
      t.boolean :regular
      t.boolean :smartphone
      t.boolean :app


      t.timestamps null: false
    end
  end
end
