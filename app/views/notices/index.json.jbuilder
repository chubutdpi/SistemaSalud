json.set! :data do
  json.array! @notices do |notice|
    json.partial! 'notices/notice', notice: notice
    json.url  "
              #{link_to((fa_icon "eye"), notice)}
              #{link_to((fa_icon "pencil"), edit_notice_path(notice))}
              #{link_to((fa_icon "trash-o"), notice, method: :delete, data: { confirm: '¿Esta seguro que desea eliminar?' })}
              "
  end
end