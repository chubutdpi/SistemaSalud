require 'faker'

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

user = User.new
user.email = 'julevite@hotmail.com'
user.password = 'julevite25257260'
user.area = 'MS'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'marielaandreabrito@gmail.com'
user.password = 'mariela26408760'
user.area = 'MS'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'carrerasdanielita@gmail.com'
user.password = 'daniela29300004'
user.area = 'MS'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'pinillamirta95@gmail.com'
user.password = 'mirta33774388'
user.area = 'Paso de Indios'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'sabricorzo@gmail.com'
user.password = 'sabrina35580499'
user.area = 'Camarones'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'caroldenegri.cmd@gmail.com'
user.password = 'carol123'
user.area = 'Gaiman'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'epidemiologiaaptrelew@gmail.com'
user.password = 'carolina28509394'
user.area = 'dpapt'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'analiaiturra@gmail.com'
user.password = 'analia36860255'
user.area = 'Trelew'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'julizicchieri.c@gmail.com'
user.password = 'juli39441152'
user.area = 'Trelew'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'lilloramonamagdalena@gmail.com'
user.password = 'ramona26331585'
user.area = 'Rawson'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'aricardoazocar@gmail.com'
user.password = 'ariel22203364'
user.area = 'Rawson'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'acostadenise03@gmail.com'
user.password = 'denise28976890'
user.area = 'dpapn'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'malendrtorres@gmail.com'
user.password = 'malen35404471'
user.area = 'dpapn'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'julia.mendez.ape@gmail.com'
user.password = 'julia25457190'
user.area = 'dpape'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'jdiaz.vet@gmail.com'
user.password = 'jorge29830514'
user.area = 'dpape'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'abril.lorena26@gmail.com'
user.password = 'lorena26857214'
user.area = 'dpapcr'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'emivillibar1984@gmail.com'
user.password = 'emilia31233712'
user.area = 'dpapcr'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'valetracaman@hotmail.com'
user.password = 'valeria28019199'
user.area = 'RM-RR-LB-AB'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'luislagoblanco54@gmail.com'
user.password = 'luis17878397'
user.area = 'RM-RR-LB-AB'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'msildb80@gmail.com'
user.password = 'silvina28645646'
user.area = 'Comodoro Rivadavia'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'licmcgomez@gmail.com'
user.password = 'celeste26244454'
user.area = 'SM-FC-BP'
user.save!
user.add_role 'epidemiology'

user = User.new
user.email = 'yoelangeldivino@gmail.com'
user.password = 'Dayhana28867617'
user.area = 'RS-AA'
user.save!
user.add_role 'epidemiology'


State.create!([
  {name: "pendiente"},
  {name: "confirmado"},
  {name: "emitido"}
])

Area.create!([
  {name: "Dirección Porvincial Área Programática Trelew", abbreviation: "dpapt"},
  {name: "Dirección Porvincial Área Programática Norte", abbreviation: "dpapn"},
  {name: "Dirección Porvincial Área Programática Esquel", abbreviation: "dpape"},
  {name: "Dirección Porvincial Área Programática Comodoro Rivadavia", abbreviation: "dpapcr"},
  {name: "Alto Río Senguer - Aldea Apeleg", abbreviation: "RS-AA"},
  {name: "Río Mayo - Doctor Ricardo Rojas - Lago Blanco - Aldea Beleiro", abbreviation: "RM-RR-LB-AB"},
  {name: "Sarmiento - Facundo - Buen Pasto", abbreviation: "SM-FC-BP"}

])

Locality.create!([
  {name: "Comodoro Rivadavia", postal_code: nil, area_id: 4, short_name: "C.Rivadavia - R.Tilly", enabled: true},
  {name: "Río Mayo", postal_code: nil, area_id: 4, short_name: "Río Mayo", enabled: true},
  {name: "Sarmiento", postal_code: nil, area_id: 4, short_name: "Sarmiento", enabled: true},
  {name: "Alto Río Senguer", postal_code: nil, area_id: 4, short_name: "Río Senguer", enabled: true},
  {name: "Lago Blanco", postal_code: nil, area_id: 4, short_name: "Lago Blanco", enabled: true},
  {name: "Aldea Beleiro", postal_code: nil, area_id: 4, short_name: "Aldea Beleiro", enabled: true},
  {name: "Doctor Ricardo Rojas", postal_code: nil, area_id: 4, short_name: "Dr Ricardo Rojas", enabled: true},
  {name: "Facundo", postal_code: nil, area_id: 4, short_name: "Facundo", enabled: true},
  {name: "Trelew", postal_code: nil, area_id: 1, short_name: "Trelew", enabled: true},
  {name: "Rawson", postal_code: nil, area_id: 1, short_name: "Rawson", enabled: true},
  {name: "Gaiman", postal_code: nil, area_id: 1, short_name: "Gaiman", enabled: true},
  {name: "Dolavon", postal_code: nil, area_id: 1, short_name: "Dolavon", enabled: true},
  {name: "28 de julio", postal_code: nil, area_id: 1, short_name: "28 de julio", enabled: true},
  {name: "Dique Florentino Ameghino", postal_code: nil, area_id: 1, short_name: "Dique Ameghino", enabled: true},
  {name: "Paso de Indios", postal_code: nil, area_id: 1, short_name: "Paso de Indios", enabled: true},
  {name: "Cerro Cóndor", postal_code: nil, area_id: 1, short_name: "Cerro Cóndor", enabled: true},
  {name: "Los Altares", postal_code: nil, area_id: 1, short_name: "Los Altares", enabled: true},
  {name: "Las Plumas", postal_code: nil, area_id: 1, short_name: "Las Plumas", enabled: true},
  {name: "Camarones", postal_code: nil, area_id: 1, short_name: "Camarones", enabled: true},
  {name: "Puerto Madryn", postal_code: nil, area_id: 2, short_name: "Madryn", enabled: true},
  {name: "Gastre", postal_code: nil, area_id: 2, short_name: "Gastre", enabled: true},
  {name: "Gan Gan", postal_code: nil, area_id: 2, short_name: "Gan Gan", enabled: true},
  {name: "Telsen", postal_code: nil, area_id: 2, short_name: "Telsen", enabled: true},
  {name: "Puerto Pirámides", postal_code: nil, area_id: 2, short_name: "Pirámides", enabled: true},
  {name: "El Hoyo", postal_code: nil, area_id: 3, short_name: "El Hoyo", enabled: true},
  {name: "Lago Puelo", postal_code: nil, area_id: 3, short_name: "Lago Puelo", enabled: true},
  {name: "Esquel", postal_code: nil, area_id: 3, short_name: "Esquel", enabled: true},
  {name: "Trevelin", postal_code: nil, area_id: 3, short_name: "Trevelin", enabled: true},
  {name: "Río Pico", postal_code: nil, area_id: 3, short_name: "Río Pico", enabled: true},
  {name: "Corcovado", postal_code: nil, area_id: 3, short_name: "Corcovado", enabled: true},
  {name: "El Maitén", postal_code: nil, area_id: 3, short_name: "El Maitén", enabled: true},
  {name: "Epuyén", postal_code: nil, area_id: 3, short_name: "Epuyén", enabled: true},
  {name: "Gualjaina", postal_code: nil, area_id: 3, short_name: "Gualjaina", enabled: true},
  {name: "Cushamen", postal_code: nil, area_id: 3, short_name: "Cushamen", enabled: true},
  {name: "Tecka", postal_code: nil, area_id: 3, short_name: "Tecka", enabled: true},
  {name: "Cholila", postal_code: nil, area_id: 3, short_name: "Cholila", enabled: true},
  {name: "Gobernador Costa", postal_code: nil, area_id: 3, short_name: "Gdor. Costa", enabled: true},
  {name: "Paso del Sapo", postal_code: nil, area_id: 3, short_name: "Paso del Sapo", enabled: true},
  {name: "José de San Martín", postal_code: nil, area_id: 3, short_name: "J. de San Martín", enabled: true},
  {name: "Colan Conhué", postal_code: nil, area_id: 3, short_name: "Colan Conhué", enabled: true},
  {name: "Villa Futalaufquen", postal_code: nil, area_id: 3, short_name: "Va. Futalaufquen", enabled: false},
  {name: "Yala Laubat", postal_code: nil, area_id: 2, short_name: "Yala Laubat", enabled: false},
  {name: "Aldea Apeleg", postal_code: nil, area_id: 4, short_name: "Aldea Apeleg", enabled: false},
  {name: "Aldea Epulef", postal_code: nil, area_id: 3, short_name: "Aldea Epulef", enabled: false},
  {name: "Aldea Escolar", postal_code: nil, area_id: 3, short_name: "Aldea Escolar", enabled: false},
  {name: "Arroyo Verde", postal_code: nil, area_id: 2, short_name: "Arroyo Verde", enabled: false},
  {name: "Astra", postal_code: nil, area_id: 3, short_name: "Astra", enabled: false},
  {name: "Bahía Bustamante", postal_code: nil, area_id: 4, short_name: "Bustamante", enabled: false},
  {name: "Blancuntre", postal_code: nil, area_id: 2, short_name: "Blancuntre", enabled: false},
  {name: "Buen Pasto", postal_code: nil, area_id: 4, short_name: "Buen Pasto", enabled: false},
  {name: "Buenos Aires Chico", postal_code: nil, area_id: 3, short_name: "Bs As Chico", enabled: false},
  {name: "Carrenleufú", postal_code: nil, area_id: 3, short_name: "Carrenleufú", enabled: false},
  {name: "Costa de Chubut", postal_code: nil, area_id: 3, short_name: "Costa de Chubut", enabled: false},
  {name: "Diadema Argentina", postal_code: nil, area_id: 4, short_name: "Diadema Argentina", enabled: false},
  {name: "El Escorial", postal_code: nil, area_id: 2, short_name: "El Escorial", enabled: false},
  {name: "El Mirasol", postal_code: nil, area_id: 1, short_name: "El Mirasol", enabled: false},
  {name: "Fofo Cahuel", postal_code: nil, area_id: 3, short_name: "Fofo Cahuel", enabled: false},
  {name: "Frontera de Río Pico", postal_code: nil, area_id: 3, short_name: "Río Pico", enabled: false},
  {name: "Garayalde", postal_code: nil, area_id: 1, short_name: "Garayalde", enabled: false},
  {name: "Lago Epuyén", postal_code: nil, area_id: 3, short_name: "Lago Epuyén", enabled: false},
  {name: "Lago Rosario", postal_code: nil, area_id: 3, short_name: "Lago Rosario", enabled: false},
  {name: "Lagunita Salada", postal_code: nil, area_id: 2, short_name: "Lag. Salada", enabled: false},
  {name: "Leleque", postal_code: nil, area_id: 3, short_name: "Leleque", enabled: false},
  {name: "Los Cipreses", postal_code: nil, area_id: 3, short_name: "Los Cipreses", enabled: false},
  {name: "Playa Magagna", postal_code: nil, area_id: 1, short_name: "Magagna", enabled: false},
  {name: "Playa Unión", postal_code: nil, area_id: 1, short_name: "Playa Unión", enabled: false},
  {name: "Quinta El Mirador", postal_code: nil, area_id: 2, short_name: "El Mirador", enabled: false},
  {name: "Rada Tilly", postal_code: nil, area_id: 4, short_name: "Rada Tilly", enabled: false},
  {name: "Reserva Área Protegida el Doradillo", postal_code: nil, area_id: 2, short_name: "El Doradillo", enabled: false}
])

VaccinationScheme.create!([
  {name: "Sin vacuna"},
  {name: "1 dosis"},
  {name: "2 dosis"},
  {name: "Dosis refuerzo (3 dosis)"}
])

CovidSituation.create([
  # Casos acumulados al 20-12-2021
  {locality_id: 1, part_date:	"2021-12-20", new_cases:	35274, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	34564, new_deceased:	693},
  {locality_id: 2, part_date:	"2021-12-20", new_cases:	749, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	741, new_deceased:	8},
  {locality_id: 3, part_date:	"2021-12-20", new_cases:	2470, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2428, new_deceased:	42},
  {locality_id: 4, part_date:	"2021-12-20", new_cases:	324, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	317, new_deceased:	7},
  {locality_id: 5, part_date:	"2021-12-20", new_cases:	19, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	17, new_deceased:	1},
  {locality_id: 6, part_date:	"2021-12-20", new_cases:	7, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-20", new_cases:	13, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-20", new_cases:	29, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	29, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-20", new_cases:	14159, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13906, new_deceased:	246},
  {locality_id: 10, part_date:	"2021-12-20", new_cases:	6210, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6116, new_deceased:	94},
  {locality_id: 11, part_date:	"2021-12-20", new_cases:	1135, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1114, new_deceased:	18},
  {locality_id: 12, part_date:	"2021-12-20", new_cases:	369, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	359, new_deceased:	10},
  {locality_id: 13, part_date:	"2021-12-20", new_cases:	65, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	65, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-20", new_cases:	9, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-20", new_cases:	189, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	182, new_deceased:	7},
  {locality_id: 16, part_date:	"2021-12-20", new_cases:	3, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-20", new_cases:	6, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-20", new_cases:	110, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	108, new_deceased:	2},
  {locality_id: 19, part_date:	"2021-12-20", new_cases:	212, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	208, new_deceased:	4},
  {locality_id: 20, part_date:	"2021-12-20", new_cases:	15465, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	15257, new_deceased:	208},
  {locality_id: 21, part_date:	"2021-12-20", new_cases:	63, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	62, new_deceased:	1},
  {locality_id: 22, part_date:	"2021-12-20", new_cases:	139, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	136, new_deceased:	3},
  {locality_id: 23, part_date:	"2021-12-20", new_cases:	61, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	59, new_deceased:	2},
  {locality_id: 24, part_date:	"2021-12-20", new_cases:	53, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	53, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-20", new_cases:	467, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	462, new_deceased:	3},
  {locality_id: 26, part_date:	"2021-12-20", new_cases:	1294, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1278, new_deceased:	14},
  {locality_id: 27, part_date:	"2021-12-20", new_cases:	5772, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5687, new_deceased:	82},
  {locality_id: 28, part_date:	"2021-12-20", new_cases:	1413, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1391, new_deceased:	21},
  {locality_id: 29, part_date:	"2021-12-20", new_cases:	204, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	200, new_deceased:	4},
  {locality_id: 30, part_date:	"2021-12-20", new_cases:	387, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	380, new_deceased:	7},
  {locality_id: 31, part_date:	"2021-12-20", new_cases:	676, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	666, new_deceased:	10},
  {locality_id: 32, part_date:	"2021-12-20", new_cases:	271, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	262, new_deceased:	9},
  {locality_id: 33, part_date:	"2021-12-20", new_cases:	176, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	170, new_deceased:	6},
  {locality_id: 34, part_date:	"2021-12-20", new_cases:	169, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	164, new_deceased:	5},
  {locality_id: 35, part_date:	"2021-12-20", new_cases:	166, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	161, new_deceased:	5},
  {locality_id: 36, part_date:	"2021-12-20", new_cases:	345, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	337, new_deceased:	8},
  {locality_id: 37, part_date:	"2021-12-20", new_cases:	398, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	388, new_deceased:	10},
  {locality_id: 38, part_date:	"2021-12-20", new_cases:	17, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	17, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-20", new_cases:	424, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	416, new_deceased:	8},
  {locality_id: 40, part_date:	"2021-12-20", new_cases:	62, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	60, new_deceased:	2},

  # Parte del 22-12-2021
  {locality_id: 1, part_date:	"2021-12-22", new_cases:	11, ambulatory:	23, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	7, new_deceased:	0},
  {locality_id: 2, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-22", new_cases:	2, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	-9, new_deceased:	0},
  {locality_id: 10, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 11, part_date:	"2021-12-22", new_cases:	4, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 12, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2021-12-22", new_cases:	5, ambulatory:	5, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 21, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-22", new_cases:	0, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2021-12-22", new_cases:	6, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 27, part_date:	"2021-12-22", new_cases:	4, ambulatory:	5, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	5, new_deceased:	0},
  {locality_id: 28, part_date:	"2021-12-22", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 29, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2021-12-22", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 24-12-2021
  {locality_id: 1, part_date:	"2021-12-24", new_cases:	22, ambulatory:	43, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	1, new_deceased:	1},
  {locality_id: 2, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2021-12-24", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-24", new_cases:	6, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 10, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 11, part_date:	"2021-12-24", new_cases:	7, ambulatory:	13, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 12, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2021-12-24", new_cases:	12, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 21, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2021-12-24", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-24", new_cases:	1, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2021-12-24", new_cases:	2, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 27, part_date:	"2021-12-24", new_cases:	2, ambulatory:	6, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2021-12-24", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 29, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2021-12-24", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2021-12-24", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 27-12-2021
  {locality_id: 1, part_date:	"2021-12-27", new_cases:	7, ambulatory:	41, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 2, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2021-12-27", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-27", new_cases:	7, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 10, part_date:	"2021-12-27", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 11, part_date:	"2021-12-27", new_cases:	0, ambulatory:	13, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 12, part_date:	"2021-12-27", new_cases:	3, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2021-12-27", new_cases:	19, ambulatory:	34, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 21, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2021-12-27", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-27", new_cases:	1, ambulatory:	4, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2021-12-27", new_cases:	3, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 27, part_date:	"2021-12-27", new_cases:	5, ambulatory:	12, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2021-12-27", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 29, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 34, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2021-12-27", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 29-12-2021
  {locality_id: 1, part_date:	"2021-12-29", new_cases:	24, ambulatory:	59, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 2, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2021-12-29", new_cases:	4, ambulatory:	5, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-29", new_cases:	76, ambulatory:	89, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 10, part_date:	"2021-12-29", new_cases:	33, ambulatory:	30, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 11, part_date:	"2021-12-29", new_cases:	3, ambulatory:	16, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 12, part_date:	"2021-12-29", new_cases:	1, ambulatory:	4, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2021-12-29", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2021-12-29", new_cases:	104, ambulatory:	132, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 21, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2021-12-29", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-29", new_cases:	0, ambulatory:	3, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2021-12-29", new_cases:	9, ambulatory:	17, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 27, part_date:	"2021-12-29", new_cases:	44, ambulatory:	54, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	2, new_deceased:	0},
  {locality_id: 28, part_date:	"2021-12-29", new_cases:	2, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 29, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2021-12-29", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 31-12-2021
  {locality_id: 1, part_date:	"2021-12-31", new_cases:	69, ambulatory:	119, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 2, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2021-12-31", new_cases:	5, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2021-12-31", new_cases:	106, ambulatory:	194, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 10, part_date:	"2021-12-31", new_cases:	35, ambulatory:	67, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	-2, new_deceased:	0},
  {locality_id: 11, part_date:	"2021-12-31", new_cases:	10, ambulatory:	13, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13, new_deceased:	0},
  {locality_id: 12, part_date:	"2021-12-31", new_cases:	3, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2021-12-31", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2021-12-31", new_cases:	163, ambulatory:	295, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 21, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2021-12-31", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2021-12-31", new_cases:	0, ambulatory:	2, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 26, part_date:	"2021-12-31", new_cases:	6, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 27, part_date:	"2021-12-31", new_cases:	63, ambulatory:	113, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2021-12-31", new_cases:	7, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 29, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2021-12-31", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2021-12-31", new_cases:	5, ambulatory:	5, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2021-12-31", new_cases:	3, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2021-12-31", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 03-01-2022
  {locality_id: 1, part_date:	"2022-01-03", new_cases:	32, ambulatory:	123, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	28, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-03", new_cases:	3, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-03", new_cases:	3, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-03", new_cases:	53, ambulatory:	245, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	25, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-03", new_cases:	77, ambulatory:	138, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-03", new_cases:	8, ambulatory:	20, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-03", new_cases:	0, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-03", new_cases:	1, ambulatory:	1, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-03", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-03", new_cases:	230, ambulatory:	524, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-03", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-03", new_cases:	2, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-03", new_cases:	1, ambulatory:	3, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-03", new_cases:	20, ambulatory:	36, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-03", new_cases:	18, ambulatory:	130, general_room:	0, uti_without_arm:	0, uti_with_arm:	2, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-03", new_cases:	1, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-03", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-03", new_cases:	6, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-03", new_cases:	7, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-03", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 05-01-2022
  {locality_id: 1, part_date:	"2022-01-05", new_cases:	301, ambulatory:	421, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-05", new_cases:	7, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-05", new_cases:	5, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-05", new_cases:	4, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-05", new_cases:	419, ambulatory:	649, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	14, new_deceased:	1},
  {locality_id: 10, part_date:	"2022-01-05", new_cases:	166, ambulatory:	304, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-05", new_cases:	25, ambulatory:	41, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-05", new_cases:	5, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-05", new_cases:	0, ambulatory:	1, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-05", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-05", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-05", new_cases:	809, ambulatory:	901, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	431, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-05", new_cases:	6, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-05", new_cases:	2, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-05", new_cases:	9, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-05", new_cases:	18, ambulatory:	21, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-05", new_cases:	95, ambulatory:	127, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-05", new_cases:	134, ambulatory:	264, general_room:	0, uti_without_arm:	0, uti_with_arm:	2, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-05", new_cases:	23, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-05", new_cases:	14, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-05", new_cases:	23, ambulatory:	23, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-05", new_cases:	4, ambulatory:	4, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-05", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-05", new_cases:	11, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-05", new_cases:	7, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-05", new_cases:	4, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-05", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 06-01-2022
  {locality_id: 1, part_date:	"2022-01-06", new_cases:	299, ambulatory:	717,general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-06", new_cases:	2, ambulatory:	9,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-06", new_cases:	16, ambulatory:	25,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-06", new_cases:	8, ambulatory:	15,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-06", new_cases:	288, ambulatory:	885,general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	52, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-06", new_cases:	166, ambulatory:	460,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	10, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-06", new_cases:	12, ambulatory:	50,general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-06", new_cases:	17, ambulatory:	25,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-06", new_cases:	3, ambulatory:	4,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-06", new_cases:	5, ambulatory:	6,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-06", new_cases:	2, ambulatory:	3,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-06", new_cases:	439, ambulatory:	1256,general_room:	4, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	82, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-06", new_cases:	5, ambulatory:	12,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-06", new_cases:	0, ambulatory:	3,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-06", new_cases:	0, ambulatory:	11,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-06", new_cases:	25, ambulatory:	46,general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-06", new_cases:	58, ambulatory:	182,general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-06", new_cases:	176, ambulatory:	440,general_room:	0, uti_without_arm:	0, uti_with_arm:	2, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-06", new_cases:	33, ambulatory:	57,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-06", new_cases:	35, ambulatory:	49,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-06", new_cases:	39, ambulatory:	62,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-06", new_cases:	0, ambulatory:	4,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-06", new_cases:	1, ambulatory:	2,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-06", new_cases:	1, ambulatory:	1,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-06", new_cases:	9, ambulatory:	20,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-06", new_cases:	6, ambulatory:	22,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-06", new_cases:	3, ambulatory:	14,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-06", new_cases:	0, ambulatory:	0,general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 07-01-2022
  {locality_id: 1, part_date:	"2022-01-07", new_cases:	422, ambulatory:	1109, general_room:	1, uti_without_arm:	1, uti_with_arm:	0, new_recovered:	30, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-07", new_cases:	7, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-07", new_cases:	22, ambulatory:	47, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-07", new_cases:	12, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-07", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-07", new_cases:	349, ambulatory:	1173, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	61, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-07", new_cases:	237, ambulatory:	687, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	10, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-07", new_cases:	31, ambulatory:	79, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-07", new_cases:	19, ambulatory:	39, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-07", new_cases:	5, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-07", new_cases:	0, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-07", new_cases:	2, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-07", new_cases:	514, ambulatory:	1758, general_room:	4, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-07", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-07", new_cases:	6, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-07", new_cases:	10, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-07", new_cases:	11, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-07", new_cases:	26, ambulatory:	73, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-07", new_cases:	60, ambulatory:	237, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-07", new_cases:	124, ambulatory:	517, general_room:	3, uti_without_arm:	0, uti_with_arm:	2, new_recovered:	44, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-07", new_cases:	37, ambulatory:	93, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-07", new_cases:	2, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-07", new_cases:	0, ambulatory:	49, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-07", new_cases:	0, ambulatory:	62, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-07", new_cases:	16, ambulatory:	20, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-07", new_cases:	0, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-07", new_cases:	1, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-07", new_cases:	7, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-07", new_cases:	6, ambulatory:	28, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-07", new_cases:	2, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-07", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},

  # Parte del 10-01-2022
  {locality_id: 1, part_date:	"2022-01-10", new_cases:	864, ambulatory:	1578, general_room:	3, uti_without_arm:	1, uti_with_arm:	3, new_recovered:	390, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-10", new_cases:	15, ambulatory:	31, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-10", new_cases:	31, ambulatory:	72, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-10", new_cases:	20, ambulatory:	47, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-10", new_cases:	4, ambulatory:	4, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-10", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-10", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-10", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-10", new_cases:	517, ambulatory:	1459, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	230, new_deceased:	1},
  {locality_id: 10, part_date:	"2022-01-10", new_cases:	756, ambulatory:	1306, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	137, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-10", new_cases:	52, ambulatory:	117, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	15, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-10", new_cases:	0, ambulatory:	32, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-10", new_cases:	1, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-10", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-10", new_cases:	5, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-10", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-10", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-10", new_cases:	5, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-10", new_cases:	6, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	1},
  {locality_id: 20, part_date:	"2022-01-10", new_cases:	510, ambulatory:	2079, general_room:	10, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	183, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-10", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-10", new_cases:	0, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-10", new_cases:	0, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-10", new_cases:	0, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-10", new_cases:	0, ambulatory:	73, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-10", new_cases:	86, ambulatory:	308, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	14, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-10", new_cases:	92, ambulatory:	605, general_room:	6, uti_without_arm:	0, uti_with_arm:	3, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-10", new_cases:	54, ambulatory:	121, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	26, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-10", new_cases:	15, ambulatory:	17, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-10", new_cases:	23, ambulatory:	63, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	18, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-10", new_cases:	57, ambulatory:	106, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-10", new_cases:	44, ambulatory:	64, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-10", new_cases:	8, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-10", new_cases:	13, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-10", new_cases:	7, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-10", new_cases:	0, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-10", new_cases:	17, ambulatory:	45, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-10", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-10", new_cases:	9, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-10", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},  
    
  # Parte del 11-01-2022
  {locality_id: 1, part_date:	"2022-01-11", new_cases:	643, ambulatory:	1941, general_room:	4, uti_without_arm:	1, uti_with_arm:	3, new_recovered:	279, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-11", new_cases:	6, ambulatory:	37, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-11", new_cases:	30, ambulatory:	93, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-11", new_cases:	5, ambulatory:	51, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-11", new_cases:	5, ambulatory:	9, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-11", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-11", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-11", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-11", new_cases:	537, ambulatory:	1552, general_room:	3, uti_without_arm:	1, uti_with_arm:	1, new_recovered:	440, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-11", new_cases:	368, ambulatory:	1624, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	46, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-11", new_cases:	39, ambulatory:	117, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	39, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-11", new_cases:	28, ambulatory:	59, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-11", new_cases:	2, ambulatory:	12, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-11", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-11", new_cases:	7, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-11", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-11", new_cases:	1, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-11", new_cases:	4, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-11", new_cases:	7, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-11", new_cases:	707, ambulatory:	2662, general_room:	11, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	122, new_deceased:	1},
  {locality_id: 21, part_date:	"2022-01-11", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-11", new_cases:	0, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-11", new_cases:	0, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-11", new_cases:	0, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-11", new_cases:	26, ambulatory:	99, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-11", new_cases:	60, ambulatory:	368, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-11", new_cases:	124, ambulatory:	734, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-11", new_cases:	37, ambulatory:	158, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-11", new_cases:	2, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-11", new_cases:	9, ambulatory:	72, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-11", new_cases:	0, ambulatory:	106, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-11", new_cases:	8, ambulatory:	72, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-11", new_cases:	0, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-11", new_cases:	0, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-11", new_cases:	1, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-11", new_cases:	7, ambulatory:	34, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-11", new_cases:	6, ambulatory:	49, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-11", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-11", new_cases:	2, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-11", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 12-01-2022
  {locality_id: 1, part_date:	"2022-01-12", new_cases:	599, ambulatory:	2534, general_room:	7, uti_without_arm:	1, uti_with_arm:	5, new_recovered:	0, new_deceased:	1},
  {locality_id: 2, part_date:	"2022-01-12", new_cases:	16, ambulatory:	51, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-12", new_cases:	40, ambulatory:	103, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	30, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-12", new_cases:	0, ambulatory:	51, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-12", new_cases:	1, ambulatory:	10, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-12", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-12", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-12", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-12", new_cases:	335, ambulatory:	1643, general_room:	4, uti_without_arm:	1, uti_with_arm:	1, new_recovered:	243, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-12", new_cases:	248, ambulatory:	1822, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	50, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-12", new_cases:	7, ambulatory:	99, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	25, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-12", new_cases:	23, ambulatory:	64, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	18, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-12", new_cases:	3, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-12", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-12", new_cases:	6, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-12", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-12", new_cases:	0, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-12", new_cases:	0, ambulatory:	11, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-12", new_cases:	2, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-12", new_cases:	495, ambulatory:	2996, general_room:	13, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	159, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-12", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-12", new_cases:	4, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-12", new_cases:	0, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-12", new_cases:	0, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-12", new_cases:	0, ambulatory:	89, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	10, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-12", new_cases:	29, ambulatory:	291, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	106, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-12", new_cases:	108, ambulatory:	779, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	63, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-12", new_cases:	45, ambulatory:	184, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	19, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-12", new_cases:	2, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-12", new_cases:	14, ambulatory:	71, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	14, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-12", new_cases:	31, ambulatory:	94, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	42, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-12", new_cases:	0, ambulatory:	72, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-12", new_cases:	3, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-12", new_cases:	0, ambulatory:	13, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-12", new_cases:	0, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-12", new_cases:	17, ambulatory:	51, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-12", new_cases:	0, ambulatory:	29, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	20, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-12", new_cases:	1, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-12", new_cases:	6, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-12", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 13-01-2022
  {locality_id: 1, part_date:	"2022-01-13", new_cases:	635, ambulatory:	2131, general_room:	8, uti_without_arm:	3, uti_with_arm:	4, new_recovered:	1036, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-13", new_cases:	6, ambulatory:	53, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-13", new_cases:	15, ambulatory:	110, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-13", new_cases:	0, ambulatory:	51, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-13", new_cases:	0, ambulatory:	10, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-13", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-13", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-13", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-13", new_cases:	511, ambulatory:	1788, general_room:	13, uti_without_arm:	1, uti_with_arm:	3, new_recovered:	355, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-13", new_cases:	120, ambulatory:	1882, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	60, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-13", new_cases:	0, ambulatory:	78, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	20, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-13", new_cases:	8, ambulatory:	58, general_room:	4, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	11, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-13", new_cases:	0, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-13", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-13", new_cases:	8, ambulatory:	27, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-13", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-13", new_cases:	6, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-13", new_cases:	4, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-13", new_cases:	5, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-13", new_cases:	437, ambulatory:	3197, general_room:	15, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	232, new_deceased:	1},
  {locality_id: 21, part_date:	"2022-01-13", new_cases:	2, ambulatory:	4, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	-1, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-13", new_cases:	0, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-13", new_cases:	2, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-13", new_cases:	9, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-13", new_cases:	0, ambulatory:	194, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-13", new_cases:	9, ambulatory:	315, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	59, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-13", new_cases:	94, ambulatory:	919, general_room:	4, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-13", new_cases:	32, ambulatory:	234, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	19, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-13", new_cases:	2, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-13", new_cases:	6, ambulatory:	78, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-13", new_cases:	10, ambulatory:	118, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	26, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-13", new_cases:	0, ambulatory:	109, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-13", new_cases:	0, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-13", new_cases:	6, ambulatory:	38, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-13", new_cases:	5, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	-1, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-13", new_cases:	11, ambulatory:	62, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	16, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-13", new_cases:	15, ambulatory:	61, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	13, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-13", new_cases:	1, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-13", new_cases:	8, ambulatory:	31, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	-4, new_deceased:	1},
  {locality_id: 40, part_date:	"2022-01-13", new_cases:	2, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 14-01-2022
  {locality_id: 1, part_date:	"2022-01-14", new_cases:	516, ambulatory:	2183, general_room:	11, uti_without_arm:	2, uti_with_arm:	5, new_recovered:	461, new_deceased:	0},
  {locality_id: 2, part_date:	"2022-01-14", new_cases:	8, ambulatory:	58, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-14", new_cases:	74, ambulatory:	184, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-14", new_cases:	21, ambulatory:	52, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	20, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-14", new_cases:	2, ambulatory:	12, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-14", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-14", new_cases:	2, ambulatory:	3, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-14", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-14", new_cases:	113, ambulatory:	1541, general_room:	18, uti_without_arm:	0, uti_with_arm:	4, new_recovered:	354, new_deceased:	1},
  {locality_id: 10, part_date:	"2022-01-14", new_cases:	170, ambulatory:	1972, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	80, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-14", new_cases:	4, ambulatory:	70, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-14", new_cases:	6, ambulatory:	58, general_room:	4, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-14", new_cases:	1, ambulatory:	7, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-14", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-14", new_cases:	5, ambulatory:	32, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-14", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-14", new_cases:	0, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-14", new_cases:	4, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	2, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-14", new_cases:	2, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-14", new_cases:	391, ambulatory:	3433, general_room:	10, uti_without_arm:	0, uti_with_arm:	2, new_recovered:	159, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-14", new_cases:	1, ambulatory:	5, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-14", new_cases:	15, ambulatory:	33, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-14", new_cases:	2, ambulatory:	12, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-14", new_cases:	8, ambulatory:	25, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-14", new_cases:	0, ambulatory:	193, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-14", new_cases:	16, ambulatory:	271, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	60, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-14", new_cases:	47, ambulatory:	965, general_room:	5, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-14", new_cases:	16, ambulatory:	236, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	14, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-14", new_cases:	4, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-14", new_cases:	21, ambulatory:	84, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	25, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-14", new_cases:	2, ambulatory:	102, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	18, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-14", new_cases:	0, ambulatory:	109, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-14", new_cases:	0, ambulatory:	8, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-14", new_cases:	4, ambulatory:	42, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-14", new_cases:	5, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-14", new_cases:	10, ambulatory:	63, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-14", new_cases:	3, ambulatory:	54, general_room:	1, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	10, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-14", new_cases:	1, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-14", new_cases:	0, ambulatory:	31, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-14", new_cases:	3, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 17-01-2022
  {locality_id: 1, part_date:	"2022-01-17", new_cases:	970, ambulatory:	1643, general_room:	20, uti_without_arm:	1, uti_with_arm:	4, new_recovered:	1501, new_deceased:	2},
  {locality_id: 2, part_date:	"2022-01-17", new_cases:	25, ambulatory:	59, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	22, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-17", new_cases:	88, ambulatory:	203, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	67, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-17", new_cases:	27, ambulatory:	79, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-17", new_cases:	0, ambulatory:	7, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-17", new_cases:	1, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-17", new_cases:	7, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-17", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-17", new_cases:	216, ambulatory:	1460, general_room:	14, uti_without_arm:	0, uti_with_arm:	5, new_recovered:	300, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-17", new_cases:	79, ambulatory:	1927, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	124, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-17", new_cases:	15, ambulatory:	50, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	34, new_deceased:	1},
  {locality_id: 12, part_date:	"2022-01-17", new_cases:	16, ambulatory:	26, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	50, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-17", new_cases:	2, ambulatory:	6, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-17", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-17", new_cases:	9, ambulatory:	41, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-17", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-17", new_cases:	7, ambulatory:	15, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-17", new_cases:	5, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	0, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-17", new_cases:	13, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	10, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-17", new_cases:	700, ambulatory:	3485, general_room:	18, uti_without_arm:	2, uti_with_arm:	2, new_recovered:	636, new_deceased:	2},
  {locality_id: 21, part_date:	"2022-01-17", new_cases:	3, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-17", new_cases:	4, ambulatory:	30, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-17", new_cases:	2, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-17", new_cases:	10, ambulatory:	33, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-17", new_cases:	0, ambulatory:	193, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-17", new_cases:	23, ambulatory:	72, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	222, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-17", new_cases:	166, ambulatory:	1000, general_room:	10, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	124, new_deceased:	2},
  {locality_id: 28, part_date:	"2022-01-17", new_cases:	33, ambulatory:	141, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	128, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-17", new_cases:	3, ambulatory:	14, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-17", new_cases:	20, ambulatory:	58, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	46, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-17", new_cases:	30, ambulatory:	62, general_room:	5, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	66, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-17", new_cases:	14, ambulatory:	79, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	44, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-17", new_cases:	5, ambulatory:	8, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-17", new_cases:	0, ambulatory:	42, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-17", new_cases:	7, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-17", new_cases:	19, ambulatory:	54, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	28, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-17", new_cases:	5, ambulatory:	29, general_room:	2, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	29, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-17", new_cases:	19, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-17", new_cases:	26, ambulatory:	55, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	1},
  {locality_id: 40, part_date:	"2022-01-17", new_cases:	10, ambulatory:	19, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 18-01-2022
  {locality_id: 1, part_date:	"2022-01-18", new_cases:	558, ambulatory:	1705, general_room:	8, uti_without_arm:	0, uti_with_arm:	4, new_recovered:	508, new_deceased:	1},
  {locality_id: 2, part_date:	"2022-01-18", new_cases:	1, ambulatory:	46, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	14, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-18", new_cases:	23, ambulatory:	224, general_room:	3, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	1},
  {locality_id: 4, part_date:	"2022-01-18", new_cases:	4, ambulatory:	36, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	47, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-18", new_cases:	0, ambulatory:	7, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-18", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-18", new_cases:	0, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-18", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-18", new_cases:	186, ambulatory:	1514, general_room:	16, uti_without_arm:	0, uti_with_arm:	5, new_recovered:	130, new_deceased:	0},
  {locality_id: 10, part_date:	"2022-01-18", new_cases:	68, ambulatory:	1845, general_room:	3, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	150, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-18", new_cases:	0, ambulatory:	50, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-18", new_cases:	13, ambulatory:	39, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-18", new_cases:	0, ambulatory:	6, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-18", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-18", new_cases:	4, ambulatory:	38, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-18", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-18", new_cases:	1, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-18", new_cases:	2, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	5, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-18", new_cases:	3, ambulatory:	25, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-18", new_cases:	301, ambulatory:	3469, general_room:	15, uti_without_arm:	0, uti_with_arm:	3, new_recovered:	319, new_deceased:	2},
  {locality_id: 21, part_date:	"2022-01-18", new_cases:	2, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-18", new_cases:	1, ambulatory:	20, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	11, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-18", new_cases:	1, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-18", new_cases:	7, ambulatory:	30, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	10, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-18", new_cases:	28, ambulatory:	208, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-18", new_cases:	9, ambulatory:	65, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	16, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-18", new_cases:	92, ambulatory:	1093, general_room:	6, uti_without_arm:	0, uti_with_arm:	4, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-18", new_cases:	43, ambulatory:	125, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	58, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-18", new_cases:	1, ambulatory:	10, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-18", new_cases:	8, ambulatory:	49, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	18, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-18", new_cases:	8, ambulatory:	51, general_room:	5, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	19, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-18", new_cases:	0, ambulatory:	79, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-18", new_cases:	4, ambulatory:	12, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-18", new_cases:	14, ambulatory:	28, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	28, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-18", new_cases:	2, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-18", new_cases:	4, ambulatory:	49, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-18", new_cases:	10, ambulatory:	33, general_room:	2, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	6, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-18", new_cases:	4, ambulatory:	23, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-18", new_cases:	3, ambulatory:	49, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-18", new_cases:	16, ambulatory:	31, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  
  # Parte del 19-01-2022
  {locality_id: 1, part_date:	"2022-01-19", new_cases:	441, ambulatory:	1555, general_room:	13, uti_without_arm:	2, uti_with_arm:	5, new_recovered:	582, new_deceased:	1},
  {locality_id: 2, part_date:	"2022-01-19", new_cases:	9, ambulatory:	44, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	11, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-19", new_cases:	35, ambulatory:	204, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	56, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-19", new_cases:	0, ambulatory:	36, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-19", new_cases:	1, ambulatory:	1, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-19", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-19", new_cases:	3, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-19", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-19", new_cases:	79, ambulatory:	1496, general_room:	16, uti_without_arm:	0, uti_with_arm:	7, new_recovered:	91, new_deceased:	4},
  {locality_id: 10, part_date:	"2022-01-19", new_cases:	64, ambulatory:	1846, general_room:	0, uti_without_arm:	0, uti_with_arm:	7, new_recovered:	60, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-19", new_cases:	8, ambulatory:	34, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	24, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-19", new_cases:	13, ambulatory:	39, general_room:	3, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-19", new_cases:	0, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-19", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-19", new_cases:	1, ambulatory:	30, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-19", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-19", new_cases:	0, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-19", new_cases:	0, ambulatory:	21, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	1},
  {locality_id: 19, part_date:	"2022-01-19", new_cases:	1, ambulatory:	22, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	4, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-19", new_cases:	210, ambulatory:	3224, general_room:	20, uti_without_arm:	0, uti_with_arm:	3, new_recovered:	450, new_deceased:	0},
  {locality_id: 21, part_date:	"2022-01-19", new_cases:	0, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-19", new_cases:	1, ambulatory:	9, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-19", new_cases:	0, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-19", new_cases:	0, ambulatory:	30, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-19", new_cases:	4, ambulatory:	205, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-19", new_cases:	6, ambulatory:	71, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-19", new_cases:	43, ambulatory:	1135, general_room:	8, uti_without_arm:	0, uti_with_arm:	3, new_recovered:	0, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-19", new_cases:	32, ambulatory:	134, general_room:	0, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	23, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-19", new_cases:	2, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-19", new_cases:	10, ambulatory:	49, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-19", new_cases:	16, ambulatory:	55, general_room:	3, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	14, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-19", new_cases:	0, ambulatory:	63, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	16, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-19", new_cases:	9, ambulatory:	20, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-19", new_cases:	3, ambulatory:	28, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-19", new_cases:	4, ambulatory:	25, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-19", new_cases:	12, ambulatory:	49, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	13, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-19", new_cases:	0, ambulatory:	28, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	6, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-19", new_cases:	6, ambulatory:	28, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-19", new_cases:	2, ambulatory:	47, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	5, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-19", new_cases:	3, ambulatory:	34, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  
  # Parte del 20-01-2022
  {locality_id: 1, part_date:	"2022-01-20", new_cases:	333, ambulatory:	1543, general_room:	15, uti_without_arm:	2, uti_with_arm:	6, new_recovered:	341, new_deceased:	1},
  {locality_id: 2, part_date:	"2022-01-20", new_cases:	7, ambulatory:	43, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 3, part_date:	"2022-01-20", new_cases:	45, ambulatory:	245, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	3, new_deceased:	0},
  {locality_id: 4, part_date:	"2022-01-20", new_cases:	0, ambulatory:	36, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 5, part_date:	"2022-01-20", new_cases:	0, ambulatory:	1, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 6, part_date:	"2022-01-20", new_cases:	0, ambulatory:	1, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 7, part_date:	"2022-01-20", new_cases:	0, ambulatory:	8, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 8, part_date:	"2022-01-20", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 9, part_date:	"2022-01-20", new_cases:	202, ambulatory:	1157, general_room:	19, uti_without_arm:	1, uti_with_arm:	7, new_recovered:	536, new_deceased:	1},
  {locality_id: 10, part_date:	"2022-01-20", new_cases:	64, ambulatory:	1862, general_room:	8, uti_without_arm:	0, uti_with_arm:	7, new_recovered:	40, new_deceased:	0},
  {locality_id: 11, part_date:	"2022-01-20", new_cases:	0, ambulatory:	23, general_room:	4, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 12, part_date:	"2022-01-20", new_cases:	5, ambulatory:	42, general_room:	5, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 13, part_date:	"2022-01-20", new_cases:	0, ambulatory:	2, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 14, part_date:	"2022-01-20", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 15, part_date:	"2022-01-20", new_cases:	6, ambulatory:	36, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 16, part_date:	"2022-01-20", new_cases:	0, ambulatory:	0, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 17, part_date:	"2022-01-20", new_cases:	0, ambulatory:	14, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 18, part_date:	"2022-01-20", new_cases:	3, ambulatory:	12, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 19, part_date:	"2022-01-20", new_cases:	3, ambulatory:	25, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 20, part_date:	"2022-01-20", new_cases:	244, ambulatory:	3044, general_room:	22, uti_without_arm:	0, uti_with_arm:	4, new_recovered:	420, new_deceased:	1},
  {locality_id: 21, part_date:	"2022-01-20", new_cases:	1, ambulatory:	7, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 22, part_date:	"2022-01-20", new_cases:	7, ambulatory:	16, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 23, part_date:	"2022-01-20", new_cases:	1, ambulatory:	6, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 24, part_date:	"2022-01-20", new_cases:	6, ambulatory:	36, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 25, part_date:	"2022-01-20", new_cases:	2, ambulatory:	189, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	18, new_deceased:	0},
  {locality_id: 26, part_date:	"2022-01-20", new_cases:	9, ambulatory:	59, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	21, new_deceased:	0},
  {locality_id: 27, part_date:	"2022-01-20", new_cases:	43, ambulatory:	1091, general_room:	3, uti_without_arm:	0, uti_with_arm:	3, new_recovered:	92, new_deceased:	0},
  {locality_id: 28, part_date:	"2022-01-20", new_cases:	24, ambulatory:	139, general_room:	2, uti_without_arm:	0, uti_with_arm:	1, new_recovered:	43, new_deceased:	0},
  {locality_id: 29, part_date:	"2022-01-20", new_cases:	20, ambulatory:	18, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	2, new_deceased:	0},
  {locality_id: 30, part_date:	"2022-01-20", new_cases:	9, ambulatory:	46, general_room:	2, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	12, new_deceased:	0},
  {locality_id: 31, part_date:	"2022-01-20", new_cases:	11, ambulatory:	61, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 32, part_date:	"2022-01-20", new_cases:	0, ambulatory:	63, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 34, part_date:	"2022-01-20", new_cases:	0, ambulatory:	28, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 33, part_date:	"2022-01-20", new_cases:	7, ambulatory:	26, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 36, part_date:	"2022-01-20", new_cases:	21, ambulatory:	62, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 35, part_date:	"2022-01-20", new_cases:	8, ambulatory:	32, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	1, new_deceased:	0},
  {locality_id: 38, part_date:	"2022-01-20", new_cases:	4, ambulatory:	25, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	7, new_deceased:	0},
  {locality_id: 37, part_date:	"2022-01-20", new_cases:	4, ambulatory:	25, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	8, new_deceased:	0},
  {locality_id: 40, part_date:	"2022-01-20", new_cases:	7, ambulatory:	41, general_room:	0, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	0, new_deceased:	0},
  {locality_id: 39, part_date:	"2022-01-20", new_cases:	0, ambulatory:	37, general_room:	1, uti_without_arm:	0, uti_with_arm:	0, new_recovered:	9, new_deceased:	1}
  
])

# cant = 30
# fecha_inicial = (Date.today - cant + 1)
# cant.times do
# 	Locality.all.each_with_index do |l, i|
#     cs = CovidSituation.new(
# 			locality: l,
# 			part_date: (fecha_inicial),
# 			ambulatory: Faker::Number.between(from: 0, to: 20),
# 			general_room: Faker::Number.between(from: 0, to: 10),
# 			uti_with_arm:: Faker::Number.between(from: 0, to: 5),
# 			uti_without_arm: Faker::Number.between(from: 0, to: 7),
# 			new_cases: Faker::Number.between(from: 10, to: 80),
# 			new_deceased: Faker::Number.between(from: 0, to: 0+i),
# 			new_recovered: Faker},::Number.between(from: 0, to: 5+2*i))
# 		cs.save!
# 	end
# 	fecha_inicial = (fecha_inicial + 1)
# end