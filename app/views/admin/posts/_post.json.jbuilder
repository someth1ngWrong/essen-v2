json.extract! post, :id, :name, :title, :content, :image, :time, :category_id, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
