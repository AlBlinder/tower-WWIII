extends Node2D


var diccionari  = {1:"res://Torretes/Torre1.tscn", 2: "res://Torretes/Torre2.tscn", 3:"res://Torretes/Torre3.tscn"}
var mode_construccio = false
var torreta
var control
var tipus_
var nova
var comencat

func _ready():	
	get_node("interficie/Control/Botons_torretes/boto_t1").connect("pressed", self,	"carrega", [1])
	get_node("interficie/Control/Botons_torretes/boto_t2").connect("pressed", self,	"carrega", [2])
	get_node("interficie/Control/Botons_torretes/boto_t3").connect("pressed", self,	"carrega", [3])
	 


func _process(delta):
	if mode_construccio:
		crea()

func carrega(tipus):
	comencat = true
	tipus_ = tipus
	torreta = load(diccionari[tipus_]).instance()
	if not mode_construccio:
		mode_construccio = true
	if not control:
		control = Control.new()
		get_node("interficie").add_child(control)
		control.set_name("visualització_torres")
	for i in control.get_children():
		i.queue_free()
	control.add_child(torreta, true)
	move_child(get_node("visualització_torres"), 0)
	
func crea():
	var pos = get_global_mouse_position()
	control.rect_position = pos
	print(pos)
	if torreta.possible:
		torreta.modulate = "ad54ff3c"
	else:
		torreta.modulate = "adff4545"
	
func _input(event):
	if comencat:

		var pos = get_local_mouse_position()
		nova = load(diccionari[tipus_]).instance()
		if event.is_action_pressed("boto_dret") and mode_construccio == true:
			cancela()
		if event.is_action_pressed("boto_esquerra") and mode_construccio == true and torreta.possible == true:
			cancela()
			get_node("Mapa/Torretes").add_child(nova, true)
			print(pos)
			nova.position = pos

		
func cancela():
	mode_construccio = false
	control.queue_free()
	control = false

	


