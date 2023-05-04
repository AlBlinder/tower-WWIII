extends Node2D
var enemic_llista = []
var built = false



func _process(delta):
	gira()
	
	
func gira():
	var posicio_enemic = get_global_mouse_position()
	get_node("Torreta").look_at(posicio_enemic)
	rotation_degrees += 90
	
func _on_A_body_entered(body):
	enemic_llista.append(body.get_parent())
	print(enemic_llista)


func _on_A_body_exited(body):
	enemic_llista.erase(body.get_parent())
