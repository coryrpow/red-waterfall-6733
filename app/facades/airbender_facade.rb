class AirbenderFacade
  def characters
    json = service.get_all_characters
# require 'pry';binding.pry
    json.map do |character|
      Character.new(character)
    end
  end


  def service
    AirbenderService.new
  end
end