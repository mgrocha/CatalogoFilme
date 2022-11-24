require 'rails_helper'

RSpec.describe Author, type: :model do
  context "Validar ator?" do
    it "Ator válido" do

      author = Author.new
      author.name = "Joao"
      author.email = "joao@gmail.com"
      author.birthyear = 1988
      expect(author).to be_valid
    end
    it "Ator inválido?" do
      author = Author.new
      author.name = nil
      author.email = "joao@gmail.com"
      author.birthyear = 1988  
      expect(author).to_not be_valid 
    end
  end


  context "Validar ano" do
    it "Ano vàlido?" do

      author = Author.new
      author.name = "Joao"
      author.email = "joao@gmail.com"
      author.birthyear = 1988
      expect(author).to be_valid
    end
    it "Ano inválido?" do
      author = Author.new
      author.name = "Joao"
      author.email = "joao@gmail.com"
      author.birthyear = 20
      expect(author).to_not be_valid
    end
  end

  context "Validar email" do
    it "é inválido caso do email sem @" do
      author = Author.create( 
      email: 'mariagmail.com')  
      expect(author).to_not be_valid
      
    end
    it "é inválido caso já exista um e-mail igual" do
      author = Author.create( name: 'Maria', 
      email: 'maria@gmail.com', birthyear: 1990 ) 
      author1 = Author.create( name: 'Pedro', 
      email: 'maria@gmail.com',birthyear: 1994) 
      expect(author1).to_not be_valid
    end
  end

end
