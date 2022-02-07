user = User.new
user.email = 'chubutdpi@gmail.com'
user.password = 'Chubutdpi387'
user.area = 'MS'
user.save!
user.add_role 'admin'

user = User.new
user.email = 'epidemiologia@saludchubut.ar'
user.password = 'epidemiologia123'
user.area = 'MS'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'comunicacionyprensa@saludchubut.ar'
user.password = 'comunicacion123'
user.area = 'MS'
user.save!
user.add_role 'communication'



State.create!([
  {name: "pendiente"},
  {name: "confirmado"},
  {name: "emitido"}
])

Area.create!([
  {name: "Dirección Porvincial Área Programática Trelew", abbreviation: "dpapt"},
  {name: "Dirección Porvincial Área Programática Norte", abbreviation: "dpapn"},
  {name: "Dirección Porvincial Área Programática Esquel", abbreviation: "dpape"},
  {name: "Dirección Porvincial Área Programática Comodoro Rivadavia", abbreviation: "dpapcr"}
])
Locality.create!([
  {name: "Tecka", postal_code: nil, area_id: 3},
  {name: "Telsen", postal_code: nil, area_id: 2},
  {name: "Trelew", postal_code: nil, area_id: 1},
  {name: "Trevelin", postal_code: nil, area_id: 3},
  {name: "Villa Futalaufquen", postal_code: nil, area_id: 3},
  {name: "Yala Laubat", postal_code: nil, area_id: 2},
  {name: "28 de julio", postal_code: nil, area_id: 1},
  {name: "Aldea Apeleg", postal_code: nil, area_id: 4},
  {name: "Aldea Beleiro", postal_code: nil, area_id: 4},
  {name: "Aldea Epulef", postal_code: nil, area_id: 3},
  {name: "Aldea Escolar", postal_code: nil, area_id: 3},
  {name: "Alto Río Senguer", postal_code: nil, area_id: 4},
  {name: "Arroyo Verde", postal_code: nil, area_id: 2},
  {name: "Astra", postal_code: nil, area_id: 3},
  {name: "Bahía Bustamante", postal_code: nil, area_id: 4},
  {name: "Blancuntre", postal_code: nil, area_id: 2},
  {name: "Buen Pasto", postal_code: nil, area_id: 4},
  {name: "Buenos Aires Chico", postal_code: nil, area_id: 3},
  {name: "Camarones", postal_code: nil, area_id: 1},
  {name: "Carrenleufú", postal_code: nil, area_id: 3},
  {name: "Cerro Cóndor", postal_code: nil, area_id: 1},
  {name: "Cholila", postal_code: nil, area_id: 3},
  {name: "Colan Conhué", postal_code: nil, area_id: 3},
  {name: "Comodoro Rivadavia", postal_code: nil, area_id: 4},
  {name: "Corcovado", postal_code: nil, area_id: 3},
  {name: "Costa de Chubut", postal_code: nil, area_id: 3},
  {name: "Cushamen", postal_code: nil, area_id: 3},
  {name: "Diadema Argentina", postal_code: nil, area_id: 4},
  {name: "Dique Florentino Ameghino", postal_code: nil, area_id: 1},
  {name: "Doctor Ricardo Rojas", postal_code: nil, area_id: 4},
  {name: "Dolavon", postal_code: nil, area_id: 1},
  {name: "El Escorial", postal_code: nil, area_id: 2},
  {name: "El Hoyo", postal_code: nil, area_id: 3},
  {name: "El Maitén", postal_code: nil, area_id: 3},
  {name: "El Mirasol", postal_code: nil, area_id: 1},
  {name: "Epuyén", postal_code: nil, area_id: 3},
  {name: "Esquel", postal_code: nil, area_id: 3},
  {name: "Facundo", postal_code: nil, area_id: 4},
  {name: "Fofo Cahuel", postal_code: nil, area_id: 3},
  {name: "Frontera de Río Pico", postal_code: nil, area_id: 3},
  {name: "Gan Gan", postal_code: nil, area_id: 2},
  {name: "Gaiman", postal_code: nil, area_id: 1},
  {name: "Garayalde", postal_code: nil, area_id: 1},
  {name: "Gastre", postal_code: nil, area_id: 2},
  {name: "Gobernador Costa", postal_code: nil, area_id: 3},
  {name: "Gualjaina", postal_code: nil, area_id: 3},
  {name: "José de San Martín", postal_code: nil, area_id: 3},
  {name: "Lago Blanco", postal_code: nil, area_id: 4},
  {name: "Lago Epuyén", postal_code: nil, area_id: 3},
  {name: "Lago Puelo", postal_code: nil, area_id: 3},
  {name: "Lago Rosario", postal_code: nil, area_id: 3},
  {name: "Lagunita Salada", postal_code: nil, area_id: 2},
  {name: "Las Plumas", postal_code: nil, area_id: 1},
  {name: "Leleque", postal_code: nil, area_id: 3},
  {name: "Los Altares", postal_code: nil, area_id: 1},
  {name: "Los Cipreses", postal_code: nil, area_id: 3},
  {name: "Paso de Indios", postal_code: nil, area_id: 1},
  {name: "Paso del Sapo", postal_code: nil, area_id: 3},
  {name: "Playa Magagna", postal_code: nil, area_id: 1},
  {name: "Playa Unión", postal_code: nil, area_id: 1},
  {name: "Puerto Madryn", postal_code: nil, area_id: 2},
  {name: "Puerto Pirámides", postal_code: nil, area_id: 2},
  {name: "Quinta El Mirador", postal_code: nil, area_id: 2},
  {name: "Rada Tilly", postal_code: nil, area_id: 4},
  {name: "Rawson", postal_code: nil, area_id: 1},
  {name: "Reserva Área Protegida el Doradillo", postal_code: nil, area_id: 2},
  {name: "Río Mayo", postal_code: nil, area_id: 4},
  {name: "Río Pico", postal_code: nil, area_id: 3},
  {name: "Sarmiento", postal_code: nil, area_id: 4}
])


casos_list = [
  ["Comodoro Rivadavia", 1578, 0, 3, 1, 3, 35050, 694, 37329, 36465, 864],
  ["Río Mayo", 31, 0, 0, 0, 0, 741, 8, 780, 765, 15],
  ["Sarmiento", 72, 0, 0, 0, 0, 2443, 42, 2557, 2526, 31],
  ["Alto Río Senguer", 47, 0, 0, 0, 0, 318, 7, 372, 352, 20],
  ["Lago Blanco", 4, 0, 1, 0, 0, 17, 1, 23, 19, 4],
  ["Aldea Beleiro", 1, 0, 0, 0, 0, 7, 0, 8, 7, 1],
  ["Doctor Ricardo Rojas", 1, 0, 0, 0, 0, 13, 0, 14, 14, 0],
  ["Facundo", 0, 0, 0, 0, 0, 29, 0, 29, 29, 0],
  ["Trelew", 1459, 0, 0, 0, 1, 14282, 248, 15990, 15473, 517],
  ["Rawson", 1306, 0, 0, 0, 0, 6281, 94, 7681, 6925, 756],
  ["Gaiman", 117, 0, 0, 0, 0, 1154, 18, 1289, 1237, 52],
  ["Dolavon", 32, 0, 0, 0, 0, 375, 10, 417, 417, 0],
  ["28 de julio", 10, 0, 0, 0, 0, 66, 0, 76, 75, 1],
  ["Dique Florentino Ameghino", 0, 0, 0, 0, 0, 9, 0, 9, 9, 0],
  ["Paso de Indios", 11, 0, 0, 0, 0, 182, 7, 200, 195, 5],
  ["Cerro Cóndor", 0, 0, 0, 0, 0, 3, 0, 3, 3, 0],
  ["Los Altares", 1, 0, 0, 0, 0, 6, 0, 7, 6, 1],
  ["Las Plumas", 10, 0, 0, 0, 0, 108, 2, 120, 115, 5],
  ["Camarones", 7, 0, 0, 0, 0, 211, 5, 223, 217, 6],
  ["Puerto Madryn", 2079, 0, 10, 0, 0, 15973, 208, 18270, 17760, 510],
  ["Gastre", 1, 0, 0, 0, 0, 62, 1, 64, 64, 0],
  ["Gan Gan", 18, 0, 0, 0, 0, 136, 3, 157, 157, 0],
  ["Telsen", 13, 0, 0, 0, 0, 59, 2, 74, 74, 0],
  ["Puerto Pirámides", 22, 0, 0, 0, 0, 53, 0, 75, 75, 0],
  ["El Hoyo", 73, 0, 0, 0, 0, 463, 3, 539, 539, 0],
  ["Lago Puelo", 308, 0, 1, 0, 0, 1318, 14, 1641, 1555, 86],
  ["Esquel", 605, 0, 6, 0, 3, 5738, 82, 6434, 6342, 92],
  ["Trevelin", 121, 0, 0, 0, 0, 1429, 21, 1571, 1517, 54],
  ["Río Pico", 17, 0, 0, 0, 0, 200, 4, 221, 206, 15],
  ["Corcovado", 63, 0, 0, 0, 0, 398, 7, 468, 445, 23],
  ["El Maiten", 106, 0, 0, 0, 0, 679, 10, 795, 738, 57],
  ["Epuyén", 64, 0, 0, 0, 0, 262, 9, 335, 291, 44],
  ["Gualjaina", 10, 0, 0, 0, 0, 171, 6, 187, 179, 8],
  ["Cushamen", 13, 0, 0, 0, 0, 164, 5, 182, 169, 13],
  ["Tecka", 8, 0, 0, 0, 0, 162, 5, 175, 168, 7],
  ["Cholila", 27, 0, 0, 0, 0, 337, 8, 372, 372, 0],
  ["Gobernador Costa", 45, 0, 0, 0, 0, 390, 10, 445, 428, 17],
  ["Paso del Sapo", 1, 0, 0, 0, 0, 17, 0, 18, 17, 1],
  ["José de San Martín", 19, 0, 0, 0, 0, 425, 8, 452, 443, 9],
  ["Colan Conhué", 1, 0, 0, 0, 0, 60, 2, 63, 62, 1]
]

casos_list.each do |locality_name, ambulatorios, centros_intermedios, sala_general, sin_arm, con_arm, recuperados, fallecidos, casos_nuevos, fallecidos_nuevos|
  locality = Locality.where(name:locality_name).first
  CovidSituation.find_or_create_by(locality: locality, part_date:Date.today, ambulatory: ambulatorios, general_room: sala_general, uti_with_arm: con_arm, uti_without_arm: sin_arm, new_recovered: recuperados, new_cases: casos_nuevos, new_deceased: fallecidos_nuevos)  
end
