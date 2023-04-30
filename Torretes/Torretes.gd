extends Node2D


func _process(delta):
	gira()
	
	
func gira():
	var posicio_enemic = get_global_mouse_position()
	get_node("Torreta").look_at(posicio_enemic)
	rotation_degrees += 90
