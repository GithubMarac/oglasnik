class Application < ApplicationRecord
  belongs_to :job

  
  validates :ime, presence: true, length: { in: 5..20 }
  validates :prezime, presence: true, length: { in: 5..20 }
  validates :datum_rođenja, presence: true, validate_dob
  validates :email, presence: true, email: true
  validates :broj_telefona, presence: true, numericality { only_integer: true }
  validates :adresa_boravišta, presence: true, len in { 5..30}
  datum_rođenja:date email:string broj_telefona:string adresa_boravišta:string stručna_sprema:string
  def validate_dob 
      if :datum_rođenja? && :datum_rođenja > datum_rođenja > 18.years.ago.to_d
        errors.add(:datum_rođenja, 'Moraš biti stariji od 18')
  end


    
    def provjera_isteka_oglasa
      if istek_oglasa? && istek_oglasa < Date.today
        errors.add(:istek_oglasa, " ne može biti u prošlosti.")
      end
    end
end
