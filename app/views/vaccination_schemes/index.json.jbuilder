json.set! :data do
  json.array! @vaccination_schemes do |vaccination_scheme|
    json.partial! 'vaccination_schemes/vaccination_scheme', vaccination_scheme: vaccination_scheme
    json.url  "
              #{link_to 'Show', vaccination_scheme }
              #{link_to 'Edit', edit_vaccination_scheme_path(vaccination_scheme)}
              #{link_to 'Destroy', vaccination_scheme, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end