class Admin < ApplicationRecord
  has_one :user , :foreign_key => :admin_id, dependent: :destroy
end
