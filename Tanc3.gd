extends PathFollow2D


var moviment := Vector2(1,1)
var velocitat = DadesJoc.dades_tancs["3"]["velocitat"]
var punts_vida = DadesJoc.dades_tancs["3"]["vida"]
onready var barra_vida := get_node("barra_vida")

func _ready():
#	position = Vector2(-29, 96)
	offset = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offset += velocitat * delta * 3

func tocat(mal):
	punts_vida -= mal
	if punts_vida <= 0:
		DadesJoc.diners += DadesJoc.dades_tancs["3"]["benefici"]
		self.queue_free()	
