class Consignment < ApplicationRecord
  has_many :goods, dependent: :destroy
end
