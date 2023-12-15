class AirbenderService
  def get_all_characters
    get_url('/api/v1/characters')
  end

  def nation_search(search)
    get_url("/api/v1/characters?affiliation=#{search}")
  end

  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url:'https://last-airbender-api.fly.dev')
  end
end