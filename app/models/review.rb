class Review < ApplicationRecord
  belongs_to :teacher
  validates :content, length: { minimum: 20 }
end
