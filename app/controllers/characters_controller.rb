class CharactersController < ApplicationController
  def index
    @facade = CharactersFacade.new.all_characters
  end
end