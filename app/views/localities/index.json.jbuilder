json.set! :data do
  json.array! @localities do |locality|
    json.partial! 'localities/locality', locality: locality
    json.url  "
              #{link_to((fa_icon "eye"), locality)}
              #{link_to((fa_icon "pencil"), edit_locality_path(locality))}
              #{link_to((fa_icon "trash-o"), locality, method: :delete, data: { confirm: '¿Esta seguro que desea eliminar?' })}
              "
  end
end