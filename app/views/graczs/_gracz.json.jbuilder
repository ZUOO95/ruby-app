json.extract! gracz, :id, :imie, :nazwisko, :nick, :team_id, :created_at, :updated_at
json.url gracz_url(gracz, format: :json)
