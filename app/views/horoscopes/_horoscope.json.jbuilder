json.extract! horoscope, :id, :title, :body, :sign_id, :start_date, :end_date, :created_at, :updated_at
json.url horoscope_url(horoscope, format: :json)
