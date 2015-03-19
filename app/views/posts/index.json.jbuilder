json.array!(@posts) do |post|
  json.extract! post, :id, :heading, :sub_heading, :body
  json.url post_url(post, format: :json)
end
