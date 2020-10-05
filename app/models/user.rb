class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
    validates :ime, presence: true, length: { in: 5..20 }
    validates :prezime, presence: true, length: { in: 5..20 }
end
