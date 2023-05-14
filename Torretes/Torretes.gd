extends Node2D
var enemic_llista = []
var construida = false
var pot_disparar = true
export var possible_construir := false
var llista := ["ocupat", "Area", "Area1", "Area2", "Area3", "Area4", "Area5", "Area6", "Area7", "Area8", "Area9", "Area10"]
var contacte := []


func _process(delta):
	gira()
	if not construida:
		if contacte.size() <= 0:
			possible_construir = true
		else:
			possible_construir = false
func gira():
	if construida:
		if enemic_llista.size() == 0:
			return
		var posicio_enemic = enemic_llista[0].global_position
		$Torreta.look_at(posicio_enemic)
		if pot_disparar:
			dispara(enemic_llista)
		rotation_degrees += 90
	
func _on_A_body_entered(body):
	enemic_llista.append(body.get_parent())
#	if body.is_in_group("Tancs"):
#		enemic_llista.append(body.get_parent())

func _on_A_body_exited(body):
	enemic_llista.erase(body.get_parent())
#	if body.is_in_group("Tancs"):
#		enemic_llista.erase(body.get_parent())
	
func dispara(llista):
	pot_disparar = false
	if self.tipus == "T1" or self.tipus == "T2" or self.tipus == "T3":
		get_node("AnimationPlayer").play("Dispara")
	llista[0].tocat(DadesJoc.dades_torres[self.tipus]["mal"])
	yield(get_tree().create_timer(DadesJoc.dades_torres[self.tipus]["temps_recarrega"]), "timeout")
	pot_disparar = true
	
	
func _on_ocupat_area_entered(area):
	if area.get_name() in llista:
		contacte.append(area.get_name())

func _on_ocupat_area_exited(area):
	if area.get_name() in llista:
		contacte.erase(area.get_name())


