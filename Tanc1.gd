extends Node2D


var moviment := Vector2.ZERO
var velocitat := 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func rota():
	rotation_degrees += 1

func avanca():
	moviment.y = velocitat * sin(rotation_degrees)
	moviment.x = velocitat * cos(rotation_degrees)
	moviment = $KinematicBody2D.move_and_slide(moviment)
	
	
