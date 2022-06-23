json.extract! game, :id, :name, :summary, :release_date, :rating, :created_at, :updated_at
json.url game_url(game, format: :json)
