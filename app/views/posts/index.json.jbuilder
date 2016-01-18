json.array!(@posts) do |post|
  json.extract! post, :id, :name, :summary, :fulltext, :user, :formatted_name, :formatted_fulltext, :created_at
  json.url post_url(post, format: :json)
  json.set! :created, post.created_at.to_datetime.strftime('%Q')
end
