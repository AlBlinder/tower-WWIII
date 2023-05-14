extends Node2D


var diccionari  = {1:"res://Torretes/Torre1.tscn", 2: "res://Torretes/Torre2.tscn", 3:"res://Torretes/Torre3.tscn"}
var menu = load("res://Menu.tscn").instance()
var credits = load("res://Credits.tscn").instance()
var soroll = load("res://soroll_clicar_boto.tscn").instance()
var mode_construccio := false 
var joc_existent := true
var torreta
var nova
var control
var tipus_
var comencat




func _ready():	
	get_node("interficie/Control/Botons_torretes/boto_t1").connect("pressed", self,	"carrega", [1])
	get_node("interficie/Control/Botons_torretes/boto_t2").connect("pressed", self,	"carrega", [2])
	get_node("interficie/Control/Botons_torretes/boto_t3").connect("pressed", self,	"carrega", [3])
	get_node("interficie/Control/diners_valor").text = str(DadesJoc.diners) + " $"


func _process(delta):
	if joc_existent:
		get_node("interficie/Control/vida_base").value = DadesJoc.vida_base
		get_node("interficie/Control/diners_valor").text = str(DadesJoc.diners) + " $"
		if DadesJoc.vida_base <= 0:
			get_node("joc_acabat").visible = true
			yield(get_tree().create_timer(3), "timeout")
			joc_existent = false
			get_parent().add_child(menu)
			menu.set_name("Menu")
			get_parent().add_child(credits)
			credits.set_name("Credits")
			get_parent().add_child(soroll)
			soroll.set_name("clicar_boto")
			get_parent().nou_menu = true
			self.queue_free()
			
		if DadesJoc.guanyat and get_node("Mapa/Enemics").get_children().size() <= 1:
			get_node("joc_acabat").text = "YOU   WON!!!"
			get_node("joc_acabat").visible = true
			yield(get_tree().create_timer(5), "timeout")
			joc_existent = false
			get_parent().add_child(menu)
			menu.set_name("Menu")
			get_parent().add_child(credits)
			credits.set_name("Credits")
			get_parent().add_child(soroll)
			soroll.set_name("clicar_boto")
			get_parent().nou_menu = true
			self.queue_free()
			
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
	if torreta.possible_construir:
		torreta.modulate = "ad54ff3c"
	else:
		torreta.modulate = "adff4545"
	
func _input(event):
	if comencat:
		var pos = get_local_mouse_position()
		nova = load(diccionari[tipus_]).instance()
		if event.is_action_pressed("boto_dret") and mode_construccio == true:
			cancela()
		if event.is_action_pressed("boto_esquerra") and mode_construccio == true and torreta.possible_construir == true and DadesJoc.dades_torres[torreta.tipus]["preu"] <= DadesJoc.diners:
			cancela()
			get_node("Mapa/Torretes").add_child(nova, true)
			nova.position = pos
			nova.construida = true
			DadesJoc.diners -= DadesJoc.dades_torres[torreta.tipus]["preu"]

		
func cancela():
	mode_construccio = false
	control.queue_free()
	control = false

func _on_Base_body_entered(body):
	DadesJoc.vida_base -= body.get_parent().punts_vida / 10
