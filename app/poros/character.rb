class Character
  attr_reader :id,
              :allies,
              :enemies,
              :photo_url,
              :name,
              :affiliation


  def initialize(attributes)
# require 'pry';binding.pry
    @id = attributes[:_id]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @photo_url = attributes[:photoUrl]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
  end
end