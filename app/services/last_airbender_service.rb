class LastAirbenderService < ApplicationService
  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def get_url(url)
    conn.get(url)
  end

  def characters_list
    json_parse(get_url('/api/v1/characters'))
  end

  def character_name_search(name)
    json_parse(get_url("api/v1/characters?name=#{name}"))
  end
end