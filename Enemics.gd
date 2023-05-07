extends Path2D


var tancs = [preload("res://Tanc1.tscn"), preload("res://Tanc2.tscn"), preload("res://Tanc3.tscn")]

# Called when the node enters the scene tree for the first time.
func _ready():
	crea_enemic(1,4,1)

func _process(delta):
	pass


func crea_enemic(tipus, numero, temps):
	for i in range(numero):
		var enemic_nou = tancs[tipus-1].instance()
		add_child(enemic_nou)
		yield(get_tree().create_timer(temps), "timeout")

