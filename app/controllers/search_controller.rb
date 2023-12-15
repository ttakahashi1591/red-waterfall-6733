class SearchController < ApplicationController
  def index
    @facade = CharactersFacade.new.character_by_affiliation(params[:nation])
  end
end