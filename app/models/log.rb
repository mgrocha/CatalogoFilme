class Log < ApplicationRecord
  belongs_to :comment
  validates :comment, presence: true
end
