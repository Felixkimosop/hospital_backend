class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
