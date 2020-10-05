class Application < ApplicationRecord
  belongs_to :job

  
  validates :ime, presence: true, length: { in: 5..20 }
  validates :prezime, presence: true, length: { in: 5..20 }
  validates :email, presence: true, email: true
  validates :broj_telefona, presence: true, numericality: { only_integer: true }
  validates :adresa_boravišta, presence: true, length: { in: 5..30}
  validates :stručna_sprema, presence: true, length: { in: 0..5 }

  def validate_dob 
      if :datum_rođenja? &&   :datum_rođenja > 18.years.ago.to_d
        errors.add(:datum_rođenja, 'Moraš biti stariji od 18')
      end
  end


  
end
