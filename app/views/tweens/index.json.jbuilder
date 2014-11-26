json.array!(@tweens) do |tween|
  json.extract! tween, :id, :status, :user_id
  json.url tween_url(tween, format: :json)
end
