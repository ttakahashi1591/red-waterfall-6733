class CharactersFacade
  def all_characters
    service = LastAirbenderService.new

    data = service.characters_list

    data.map do |data|
      Character.new(data)
    end
  end

  def character_by_name(name)
    service = LastAirbenderService.new

    data = service.character_name_search(name)
require 'pry'; binding.pry
    data.map do |data|
      Character.new(data)
    end
  end
end