json.set! :data do
  json.array! @covid_cases do |covid_case|
    json.partial! 'covid_cases/covid_case', covid_case: covid_case
    json.url  "
              #{link_to((fa_icon "eye"), covid_case)}
              #{link_to((fa_icon "check"), confirm_covid_case_path(covid_case))}
              #{link_to((fa_icon "pencil"), edit_covid_case_path(covid_case))}
              #{link_to((fa_icon "trash-o"), covid_case, method: :delete, data: { confirm: '¿Esta seguro que desea eliminar?' })}
              "
  end
end