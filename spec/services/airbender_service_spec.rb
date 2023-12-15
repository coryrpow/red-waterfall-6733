require 'rails_helper'

RSpec.describe 'Last Airbender API' do
  describe 'class methods' do
    it 'returns a list of all characters' do
     
      characters = AirbenderService.new.get_all_characters

      expect(characters).to be_a(Array)

      expect(characters[0]).to have_key(:_id)
      expect(characters[0][:_id]).to be_a(String)

      expect(characters[1]).to have_key(:allies) 
      expect(characters[1][:allies]).to be_an(Array)

      expect(characters[2]).to have_key(:enemies) 
      expect(characters[2][:enemies]).to be_an(Array)

      expect(characters[3]).to have_key(:photoUrl) 
      expect(characters[3][:photoUrl]).to be_an(String)

      expect(characters[4]).to have_key(:name) 
      expect(characters[4][:name]).to be_an(String)

      expect(characters[5]).to have_key(:affiliation) 
      expect(characters[5][:affiliation]).to be_an(String)
    end
  end
end