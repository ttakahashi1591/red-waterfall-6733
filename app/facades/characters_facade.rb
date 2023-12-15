class CharactersFacade
  def all_characters
    service = LastAirbenderService.new

    data = service.characters_list

    data.map do |data|
      Character.new(data)
    end
  end

  def character_by_affiliation(nation)
    service = LastAirbenderService.new

    data = service.characters_by_nation(nation)

    data.map do |data|
      Character.new(data)
    end
  end
end

  # def character_by_name(name)
  #   service = LastAirbenderService.new

  #   data = service.character_name_search(name)

  #   data.map do |data|
  #     Character.new(data)
  #   end
  # end
