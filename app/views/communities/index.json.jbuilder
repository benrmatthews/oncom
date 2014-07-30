json.array!(@communities) do |community|
  json.extract! community, :id, :name, :about, :category, :link, :rss
  json.url community_url(community, format: :json)
end
