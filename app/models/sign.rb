class Sign < ApplicationRecord
  has_many :signs, dependent: :destroy
end
