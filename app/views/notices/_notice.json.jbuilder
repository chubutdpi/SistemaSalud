json.extract! notice, :id, :tipo, :fecha, :titulo, :subtitulo, :cuerpo, :created_at, :updated_at
json.cuerpo notice.cuerpo.truncate(25) 
json.fecha notice.fecha.strftime("%d/%m/%Y")
json.titulo notice.titulo.truncate(50) 
json.url notice_url(notice, format: :json)
