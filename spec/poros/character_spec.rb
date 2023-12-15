require 'rails_helper'

RSpec.describe Character do
  describe "initialize" do
    it "creates a character object" do
      character_data = {
        _id: "8675309",
        allies: "Leeloo Multipass",
        enemies: "The World",
        photoUrl: "picture of a dog blasting a cig",
        name: "Marker",
        affiliation: "Friend 2 All"
      }

      character = Character.new(character_data) 
      expect(character).to be_a(Character)
      expect(character.id).to eq(character_data[:_id])
      expect(character.allies).to eq(character_data[:allies])
      expect(character.enemies).to eq(character_data[:enemies])
      expect(character.photo_url).to eq(character_data[:photoUrl])
      expect(character.name).to eq(character_data[:name])
      expect(character.affiliation).to eq(character_data[:affiliation])
    end
  end
  
end