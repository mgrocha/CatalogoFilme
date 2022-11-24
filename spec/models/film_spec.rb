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
      @film = Film.new
      @film.title = "Homem aranha"
      @film.releaseyear = 1999
      expect(@film).to_not be_valid
    end
  end

end
