class SearchController < ApplicationController
  def search
    facade = AirbenderFacade.new
    @search = facade.nation_search(params[:search])
  end



end