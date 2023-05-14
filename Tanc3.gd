extends PathFollow2D


var moviment := Vector2(1,1)
var velocitat = DadesJoc.dades_tancs["3"]["velocitat"]
var punts_vida = DadesJoc.dades_tancs["3"]["vida"]
onready var barra_vida := get_node("barra_vida")

func _ready():
	offset = 0

func _process(delta):
	offset += velocitat * delta * 1

func tocat(mal):
	punts_vida -= mal
	barra_vida.value = punts_vida
	if punts_vida <= 0:
		DadesJoc.diners += DadesJoc.dades_tancs["3"]["benefici"]
		self.queue_free()
