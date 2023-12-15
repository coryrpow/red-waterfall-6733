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
    json.map do |character|
      Character.new(character)
    end
    require 'pry';binding.pry
  end


  def service
    AirbenderService.new
  end
end