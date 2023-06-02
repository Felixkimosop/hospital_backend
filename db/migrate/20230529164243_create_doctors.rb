class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :phone_number
      t.string :email
      t.string :specialization
      t.boolean :available
      t.boolean :is_active

      t.timestamps
    end
  end
end
