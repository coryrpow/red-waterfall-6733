class AirbenderService
  def get_all_characters
    get_url('/api/v1/characters')
  end

  def nation_search(search)
    # require 'pry';binding.pry
    get_url("/api/v1/characters?affiliation=#{search}&perPage=400")
  end

  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url:'https://last-airbender-api.fly.dev')
  end
end