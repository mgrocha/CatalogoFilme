class Comment < ApplicationRecord
  belongs_to :film
  has_one :log
  validates :description , :film, presence: true
  validates :description , length: { in: 5..600}
  accepts_nested_attributes_for :log
end

