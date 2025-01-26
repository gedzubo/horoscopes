class Horoscope < ApplicationRecord
  belongs_to :sign

  has_rich_text :body
end
