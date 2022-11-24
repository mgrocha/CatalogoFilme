class Comment < ApplicationRecord
  belongs_to :film
  has_one :log
  validates :description , :film, presence: true
  validates :description , length: { in: 5..600}


  after_update  :criar_log
  def criar_log
    Log.create(comment_id: id)
  end

end

