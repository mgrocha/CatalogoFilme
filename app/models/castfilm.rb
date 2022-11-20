class Castfilm < ApplicationRecord
  belongs_to :authors
  belongs_to :films
  validates :author, :film, presence: true
end
