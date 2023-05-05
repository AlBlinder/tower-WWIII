extends Node2D


var diccionari  = {1:"res://Torretes/Torre1.tscn", 2: "res://Torretes/Torre2.tscn", 3:"res://Torretes/Torre3.tscn"}
# Called when the node enters the scene tree for the first time.
func _ready():	
	get_node("interficie/Control/Botons_torretes/boto_t1").connect("pressed", self,	"crea", [1])
	get_node("interficie/Control/Botons_torretes/boto_t2").connect("pressed", self,	"crea", [2])
	get_node("interficie/Control/Botons_torretes/boto_t3").connect("pressed", self,	"crea", [3])
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func crea(tipus):
	var torreta = load(diccionari[tipus]).instance()
	var control = Control.new()
	var pos = get_global_mouse_position()
	get_node("interficie").add_child(control, true)
	
	control.add_child(torreta, true)
	control.rect_position = pos
	control.set_name("visualització_torres")
	move_child(get_node("visualització_torres"), 0)

	




