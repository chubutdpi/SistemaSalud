json.extract! covid_case, :firstname, :lastname, :dni, :email, :state, :updated_at
json.state covid_case.state.name
json.url covid_case_url(covid_case, format: :json)
