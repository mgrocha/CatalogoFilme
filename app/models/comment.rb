class Comment < ApplicationRecord
  belongs_to :films
  has_one :logs
  validates :description , :film, presence: true
  validates :description , length: { in: 5..600}
end
