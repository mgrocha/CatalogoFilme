require 'rails_helper'

RSpec.describe Film, type: :model do
  before(:each) do
    @film = Film.create( title: "Homem aranha",  releaseyear: 2021)
  end
  describe 'Valid Filme' do
     it "filme válido" do
     expect( @film).to be_valid
     end
  end

  describe 'Valid Title como único' do
    it "Title válido" do
      film1 = Film.create
      film1.title = "Homem aranha"
      film1.releaseyear = 1999
      expect(film1).to_not be_valid
    end
  end

end
