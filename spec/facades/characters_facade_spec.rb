require 'rails_helper'

RSpec.describe CharactersFacade, type: :facade do
  describe 'Movie Facade Instance Methods', :vcr do
    before(:each) do
      @facade = CharactersFacade.new  
    end

    it "exists" do
      expect(@facade).to be_a(CharactersFacade)
    end

    it "#all_characters" do
      character = @facade.all_characters

      expect(character).to be_an(Array)
      expect(character.first).to respond_to(:character_id)
      expect(character.first).to respond_to(:allies)
      expect(character.first).to respond_to(:enemies)
      expect(character.first).to respond_to(:photoUrl)
      expect(character.first).to respond_to(:name)
      expect(character.first).to respond_to(:affiliation)
    end

    it "#character_by_name" do
      character = @facade.character_by_name("Aang")
require 'pry'; binding.pry
      expect(character).to be_an(Array)
      expect(character.first).to respond_to(:character_id)
      expect(character.first).to respond_to(:allies)
      expect(character.first).to respond_to(:enemies)
      expect(character.first).to respond_to(:photoUrl)
      expect(character.first).to respond_to(:name)
      expect(character.first).to respond_to(:affiliation)
    end
  end
end