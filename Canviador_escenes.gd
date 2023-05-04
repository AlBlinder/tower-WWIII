extends Node





func _ready():
	get_node("Menu/MarginContainer/VBoxContainer/juga").connect("pressed", self, "clicar_juga")
	get_node("Menu/MarginContainer/VBoxContainer/surt").connect("pressed", self, "clicar_surt")
	get_node("Menu/MarginContainer/VBoxContainer/credits").connect("pressed", self, "clicar_credits")
	get_node("Credits/MarginContainer/VBoxContainer/torna_menu").connect("pressed", self, "clicar_menu")
	get_node("Credits").visible = false


func clicar_surt():
	$clicar_boto.play()
	get_tree().quit()

func clicar_juga():
	$clicar_boto.play() 
	get_node("Menu").queue_free()
	get_node("Credits").queue_free()
	var escena_joc = load("res://Joc.tscn").instance()	
	add_child(escena_joc)

func clicar_credits():
	$clicar_boto.play() 
	get_node("Menu").visible = false
	get_node("Credits").visible = true
	
func clicar_menu():
	$clicar_boto.play()
	get_node("Menu").visible = true
	get_node("Credits").visible = false
	
