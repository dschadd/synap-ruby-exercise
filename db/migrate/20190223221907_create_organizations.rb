class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :phone
      t.string :domain

      t.timestamps
    end
  end
end
