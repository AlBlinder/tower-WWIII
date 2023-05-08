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

func _ready():
	pass
	
func _process(delta):
	gira()
	
func gira():
	if enemic_llista.size() == 0:
		return
	var posicio_enemic = enemic_llista[0].global_position
	$Torreta.look_at(posicio_enemic)

	if pot_disparar:
		dispara(enemic_llista)
	rotation_degrees += 90
	
func _on_A_body_entered(body):
	enemic_llista.append(body.get_parent())

func _on_A_body_exited(body):
	enemic_llista.erase(body.get_parent())
	
func dispara(llista):
	pot_disparar = false
	if self.tipus == "T1":
		get_node("AnimationPlayer").play("Dispara")
	llista[0].tocat(dades_torres[self.tipus]["mal"])
	yield(get_tree().create_timer(dades_torres[self.tipus]["temps_recarrega"]), "timeout")

	pot_disparar = true
