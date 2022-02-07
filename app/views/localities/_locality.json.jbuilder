json.extract! locality, :id, :name, :postal_code, :area, :created_at, :updated_at, :enabled
json.area locality.area.abbreviation
json.url locality_url(locality, format: :json)
