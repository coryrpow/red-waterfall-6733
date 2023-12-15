class SearchController < ApplicationController
  def index
    # require 'pry';binding.pry
    @search = facade.nation_search(params[:nation])
    @population = facade.first_25(params[:nation])
  end



  private

  def facade
    AirbenderFacade.new
  end
end