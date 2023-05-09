extends Path2D

var text
var tancs = [preload("res://Tanc1.tscn"), preload("res://Tanc2.tscn"), preload("res://Tanc3.tscn")]

# Called when the node enters the scene tree for the first time.
func _ready():
	ona1()
	#crea_enemic(1,4,1)

func _process(delta):
	pass

func crea_enemic(tipus, numero, temps):
	for i in range(numero):
		var enemic_nou = tancs[tipus-1].instance()
		add_child(enemic_nou)
		yield(get_tree().create_timer(temps), "timeout")
		
func ona1():
	$Ones.text = "ONA 1"
	crea_enemic(1, 2, 5)
	yield(get_tree().create_timer(2), "timeout")
	crea_enemic(1, 1, 1)
	
func ona2():
	text = "ONA 2"
	crea_enemic(1, 4, 2)
	
func ona3():
	text = "ONA 3"
	crea_enemic(1, 4, 5)
	
func ona4():
	text = "ONA 4"
	crea_enemic(1, 4, 5)
	
func ona5():
	text = "ONA 5"
	crea_enemic(1, 4, 5)
	
func ona6():
	text = "ONA 6"
	crea_enemic(1, 4, 5)
	
func ona7():
	text = "ONA 7"
	crea_enemic(1, 4, 5)
	
func ona8():
	text = "ONA 8"
	crea_enemic(1, 4, 5)
	
func ona9():
	text = "ONA 9"
	crea_enemic(1, 4, 5)
	
func ona10():
	text = "ONA 10"
	crea_enemic(1, 4, 5)
	crea_enemic(1, 4, 5)
	crea_enemic(1, 4, 5)


