json.extract! application, :id, :ime, :prezime, :datum_rođenja, :email, :broj_telefona, :adresa_boravišta, :stručna_sprema, :job_id, :created_at, :updated_at
json.url application_url(application, format: :json)
