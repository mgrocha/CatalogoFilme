
class Author < ApplicationRecord
    has_many :castfilms
    has_many :films, through: :castfilms

    validates :name , :email, :birthyear, presence: true
    validates :name , length: { minimum: 2 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    validates :birthyear, 
    inclusion: { in: 1900..Date.today.year },
    format: { 
    with: /(19|20)\d{2}/i, 
    message: "deve ser um ano de quatro dígitos"
    }
end
