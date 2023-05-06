extends Node2D
var enemic_llista = []
var built = false
func _ready():
	if built:
		pass
	

func _process(delta):
	gira()
	
	
func gira():
	if enemic_llista.size() == 0:
		return
	
	var posicio_enemic = enemic_llista[0].global_position
	$Torreta.look_at(posicio_enemic)
	rotation_degrees += 90
	
func _on_A_body_entered(body):
	enemic_llista.append(body.get_parent())


func _on_A_body_exited(body):
	enemic_llista.erase(body.get_parent())
