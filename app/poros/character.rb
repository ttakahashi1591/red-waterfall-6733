class Character 
  attr_reader :character_id,
              :allies,
              :enemies,
              :photoUrl,
              :name,
              :affiliation

  def initialize(data)
    @character_id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end