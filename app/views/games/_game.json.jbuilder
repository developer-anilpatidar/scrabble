json.extract! game, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at
json.url game_url(game, format: :json)
