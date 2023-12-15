class SearchController < ApplicationController
  def index
    @search = facade.nation_search(params[:search])
  end



  private

  def facade
    AirbenderFacade.new
  end
end