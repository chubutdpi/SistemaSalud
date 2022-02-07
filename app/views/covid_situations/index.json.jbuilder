json.set! :data do
  json.array! @covid_situations do |covid_situation|
    json.partial! 'covid_situations/covid_situation', covid_situation: covid_situation
    json.url  "
              #{link_to((fa_icon "eye"), covid_situation)}
              #{link_to((fa_icon "pencil"), edit_covid_situation_path(covid_situation))}
              #{link_to((fa_icon "trash-o"), covid_situation, method: :delete, data: { confirm: '¿Esta seguro que desea eliminar?' })}
              "
  end
end