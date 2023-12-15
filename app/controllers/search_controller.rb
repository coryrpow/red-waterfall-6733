class SearchController < ApplicationController
  def index
    @search = facade.nation_search(params[:search])
    @population = facade.first_25(params[:search])
    # require 'pry';binding.pry
  end



  private

  def facade
    AirbenderFacade.new
  end
end