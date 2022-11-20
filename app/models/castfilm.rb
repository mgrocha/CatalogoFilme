class Castfilm < ApplicationRecord
  belongs_to :author
  belongs_to :film
  validates :author, :film, presence: true
end
