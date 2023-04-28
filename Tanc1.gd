extends PathFollow2D


var moviment := Vector2(1,1)
var velocitat := 5
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(-29, 96)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func rota(angle):
	if $KinematicBody2D.rotation_degrees > 360:
		$KinematicBody2D.rotation_degrees -= 360
	$KinematicBody2D.rotation_degrees += angle

func avanca():
	moviment = $KinematicBody2D.move_and_slide(moviment)
	$KinematicBody2D.position += $KinematicBody2D.transform.x * velocitat
	
	
