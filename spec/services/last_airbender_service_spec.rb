require 'rails_helper'

RSpec.describe LastAirbenderService, type: :service do
  describe 'Last Airbender Service Instance Methods', :vcr do
    it "#conn, returns a faraday object" do
      service = LastAirbenderService.new

      expect(service.conn).to be_a(Faraday::Connection)
    end

    it "#get_url, returns hash data" do
      url = "/api/v1/characters"

      characters_list = LastAirbenderService.new.get_url(url)

      expect(characters_list).to be_a(Faraday::Response)
    end

    it "#characters_list, returns parsed json data" do
      search_results = LastAirbenderService.new.characters_list

      expect(search_results).to be_a(Array)
      expect(search_results[0]).to be_a(Hash)
    end

    it "#charaters_by_nation, returns parsed json data" do
      search_results = LastAirbenderService.new.characters_by_nation("Fire Nation")

      expect(search_results).to be_a(Array)
      expect(search_results[0]).to be_a(Hash)
    end
  end
end