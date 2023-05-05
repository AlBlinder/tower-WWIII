extends Path2D


var tancs = [preload("res://Tanc1.tscn"), preload("res://Tanc2.tscn"), preload("res://Tanc3.tscn")]

# Called when the node enters the scene tree for the first time.
func _ready():
	crea_enemic(1)


func crea_enemic(tipus):
	var enemic_nou = tancs[tipus-1].instance()
	add_child(enemic_nou)
