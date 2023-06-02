class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :diagnosis
      t.text :treatment_details

      t.timestamps
    end
  end
end
