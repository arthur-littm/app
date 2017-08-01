class CreateConsultationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :consultations do |t|
      t.references :doctor, foreign_key: true, index: true
      t.references :patient, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
