class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :ime
      t.string :prezime
      t.date :datum_rođenja
      t.string :email
      t.string :broj_telefona
      t.string :adresa_boravišta
      t.string :stručna_sprema
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
