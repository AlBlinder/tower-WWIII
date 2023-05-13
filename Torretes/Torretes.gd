extends Node2D
var enemic_llista = []
var built = false
var pot_disparar = true
var dades_torres = {
	"T1": {
		"mal": 20,
		"Area": 350,
		"temps_recarrega": 2},
	"T2": {
		"mal": 5,
		"Area": 100,
		"temps_recarrega": 0.5},
	"T3": {
		"mal": 40,
		"Area": 500,
		"temps_recarrega": 3}
}
export var possible := false
var llista := ["ocupat", "Area", "Area1", "Area2", "Area3", "Area4", "Area5", "Area6", "Area7", "Area8", "Area9", "Area10"]
var ara := []


func _ready():
	pass
	
func _process(delta):
	gira()
	if ara.size() <= 0:
		possible = true
	else:
		possible = false
func gira():
	if enemic_llista.size() == 0:
		return
	var posicio_enemic = enemic_llista[0].global_position
	$Torreta.look_at(posicio_enemic)

	if pot_disparar:
		dispara(enemic_llista)
	rotation_degrees += 90
	
func _on_A_body_entered(body):
	if body.is_in_group("Tancs"):
		enemic_llista.append(body.get_parent())

func _on_A_body_exited(body):
	if body.is_in_group("Tancs"):
		enemic_llista.erase(body.get_parent())
	
func dispara(llista):
	pot_disparar = false
	if self.tipus == "T1" or self.tipus == "T2" or self.tipus == "T3":
		get_node("AnimationPlayer").play("Dispara")
	llista[0].tocat(dades_torres[self.tipus]["mal"])
	yield(get_tree().create_timer(dades_torres[self.tipus]["temps_recarrega"]), "timeout")
	pot_disparar = true
	
	
func _on_ocupat_area_entered(area):
	if area.get_name() in llista:
		ara.append(area.get_name())

func _on_ocupat_area_exited(area):
	if area.get_name() in llista:
		ara.erase(area.get_name())


