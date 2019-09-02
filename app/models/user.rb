class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
<<<<<<< HEAD
 
=======

>>>>>>> 3693f0d5ad236c754aa70f843e7dc7eaa3484419
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
