extends Control
var menu = load("res://Menu.tscn").instance()
var credits = load("res://Credits.tscn").instance()
var soroll = load("res://soroll_clicar_boto.tscn").instance()

func _ready():
	pass # Replace with function body.


func _on_boto_t1_pressed():
	$clicar_boto.play() 
	 # Replace with function body.


func _on_boto_t2_pressed():
	$clicar_boto.play() 
	 # Replace with function body.


func _on_boto_t3_pressed():
	$clicar_boto.play() 
	 # Replace with function body.


func _on_boto_t1_mouse_entered():
	$soroll_boto.play()  # Replace with function body.


func _on_boto_t2_mouse_entered():
	$soroll_boto.play()  # Replace with function body.


func _on_boto_t3_mouse_entered():
	$soroll_boto.play()  # Replace with function body.


func _on_TextureButton_pressed():
	get_parent().get_parent().existent = false
	get_parent().get_parent().get_parent().add_child(menu)
	menu.set_name("Menu")
	get_parent().get_parent().get_parent().add_child(credits)
	credits.set_name("Credits")
	get_parent().get_parent().get_parent().add_child(soroll)
	soroll.set_name("clicar_boto")
	get_parent().get_parent().get_parent().nou_menu = true
	get_parent().get_parent().queue_free()


func _on_TextureButton_mouse_entered():
	$soroll_boto.play()  # Replace with function body.
