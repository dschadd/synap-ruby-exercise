class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :job_title
      t.string :email_address
      t.string :phone
      t.integer :organization_id
      t.integer :address_id

      t.timestamps
    end
  end
end
