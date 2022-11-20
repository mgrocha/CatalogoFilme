class Film < ApplicationRecord
    has_many :comments
    has_many :castfilms
    has_many :author, through: :castfilms
    
    validates :title , :releaseyear, presence: true
    validates :title, uniqueness: true, length: {maximum: 200}
    
    validates :releaseyear, 
    inclusion: { in: 1888..Date.today.year },
    format: { 
    with: /(19|20)\d{2}/i, 
    message: "deve ser um ano de quatro dígitos"
    }

end
