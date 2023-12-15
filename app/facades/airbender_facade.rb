class AirbenderFacade
  def characters
    json = service.get_all_characters
# require 'pry';binding.pry
    json.map do |character|
      Character.new(character)
    end
  end

  def nation_search(search)
    json = service.nation_search(search)
require 'pry';binding.pry
    json.map do |character|
      Character.new(character)
    end.first(25)
  end


  def service
    AirbenderService.new
  end
end