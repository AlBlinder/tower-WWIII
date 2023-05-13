extends PathFollow2D


var moviment := Vector2(1,1)
var velocitat := 50
var punts_vida := 100

func _ready():
#	position = Vector2(-29, 96)
	offset = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offset += velocitat * delta * 3

func tocat(mal):
	punts_vida -= mal
	if punts_vida <= 0:
		DadesJoc.diners += 400
		self.queue_free()	
