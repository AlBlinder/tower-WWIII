extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
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
