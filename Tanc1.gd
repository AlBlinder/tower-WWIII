extends Node2D


var moviment := Vector2.ZERO
var velocitat := 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func avanca():
	moviment.x += velocitat
	moviment = $KinematicBody2D.move_and_slide(moviment)
	
	
