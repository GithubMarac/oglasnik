class Job < ApplicationRecord
    has_many :applications

        
    validates :naziv_oglasa, presence: true , length: { in: 8..25 }
    validates :opis_oglasa, presence: true, length: { in: 20..450 }
    validates :email_poslodavca, presence: true,   email: true 
    validates :kategorija_oglasa, presence: true, length: { in: 5..25}
    validate :provjera_isteka_oglasa, on: [:create, :update]

    


    def provjera_isteka_oglasa
        if istek_oglasa? && istek_oglasa < Date.today
          errors.add(:istek_oglasa, " ne može biti u prošlosti.")
        end
      end
end
