class Bab < ApplicationRecord
  # self.primary_key = 'nim'
  has_one_attached :pdf,dependent: :destroy
  has_many :sarans,dependent: :destroy
end
