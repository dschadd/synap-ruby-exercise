class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :domain
      t.string :phone
      t.integer :address_id

      t.timestamps
    end
  end
end
