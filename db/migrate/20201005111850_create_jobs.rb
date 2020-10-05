class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :naziv_oglasa
      t.text :opis_oglasa
      t.string :email_poslodavca
      t.string :kategorija_oglasa
      t.date :istek_oglasa
      t.boolean :istekao

      t.timestamps
    end
  end
end
