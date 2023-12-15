require 'rails_helper'

RSpec.describe 'Test Facade' do
  describe "instance methods" do 
    it "returns an array of all characters" do 
      facade = AirbenderFacade.new
      # require 'pry';binding.pry
      expect(facade.characters).to be_an(Array)
      expect(facade.characters.count).to eq(20)
      expect(facade.characters.first).to be_a(Character)
    end
  end
end