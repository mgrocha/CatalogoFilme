class Log < ApplicationRecord
  belongs_to :comments
  validates :, :date_comment, :comment, presence: true
end
