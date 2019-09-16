class Mdosen < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  self.primary_key = :nip
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
