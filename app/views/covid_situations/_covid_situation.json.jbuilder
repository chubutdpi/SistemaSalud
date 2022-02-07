json.extract! covid_situation, :id, :locality, :part_date, :ambulatory, :general_room, :uti_with_arm, :uti_without_arm, :new_recovered, :new_cases, :new_deceased, :created_at, :updated_at
json.locality covid_situation.locality.name
json.acumulated_new covid_situation.acumulated_new
json.acumulated_recovered covid_situation.acumulated_recovered
json.acumulated_deceased covid_situation.acumulated_deceased
json.part_date covid_situation.part_date.strftime("%d/%m/%Y")
json.url covid_situation_url(covid_situation, format: :json)
