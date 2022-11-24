require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @film = Film.create( title: "Homem aranha",  releaseyear: 2021)
    @comment = Comment.new
    @comment.description =  "muito bom"
    @comment.film_id = @film.id
  end
  describe 'Valid comment' do
     it "comment válido" do
     expect(@comment).to be_valid

     end
  end

end
