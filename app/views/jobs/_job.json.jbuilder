json.extract! job, :id, :naziv_oglasa, :opis_oglasa, :email_poslodavca, :kategorija_oglasa, :istek_oglasa, :istekao, :created_at, :updated_at
json.url job_url(job, format: :json)
