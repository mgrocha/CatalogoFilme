
class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors.add attribute, (options[:message] || "não é um email")
      end
    end
end

class Author < ApplicationRecord
    has_many :castfilms
    has_many :films, through: :castfilms

    validates :name , :email, :birthyear, presence: true
    validates :name , length: { minimum: 2 }
    validates :email, uniqueness: true, email: true, length: { minimum: 10}

    validates :birthyear, 
    inclusion: { in: 1900..Date.today.year },
    format: { 
    with: /(19|20)\d{2}/i, 
    message: "deve ser um ano de quatro dígitos"
    }
end
