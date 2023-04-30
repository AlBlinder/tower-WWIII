extends Node

func _ready():
	get_node("Menu/MarginContainer/VBoxContainer/juga").connect("pressed", self, "clicar_juga")
	get_node("Menu/MarginContainer/VBoxContainer/surt").connect("pressed", self, "clicar_surt")
	get_node("Menu/MarginContainer/VBoxContainer/credits").connect("pressed", self, "clicar_credits")
	
func clicar_surt():
	get_tree().quit()


func clicar_juga():
	get_node("Menu").queue_free()
	var escena_joc = load("res://Joc.tscn").instance()
	add_child(escena_joc)
	
