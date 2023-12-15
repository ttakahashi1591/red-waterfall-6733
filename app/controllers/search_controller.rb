class SearchController 
  def index
    @facade = CharactersFacade.new.character_by_name(params[:name])
  end
end