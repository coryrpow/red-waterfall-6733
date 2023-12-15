class WelcomeController < ApplicationController
  def index
    facade = AirbenderFacade.new
    @character = facade.characters
  end
end