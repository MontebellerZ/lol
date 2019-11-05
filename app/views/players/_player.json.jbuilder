json.extract! player, :id, :nome, :sobrenome, :idade, :nickname, :elo, :divisao, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)
