extends Path2D

var text
var tancs = [preload("res://Tanc1.tscn"), preload("res://Tanc2.tscn"), preload("res://Tanc3.tscn")]

# Called when the node enters the scene tree for the first time.
func _ready():
	ona3()
	$CanvasLayer/Ones.visible_characters = 0
	

	#crea_enemic(1,4,1)

func _process(delta):
	pass

func crea_enemic(tipus, numero, temps):
	yield(get_tree().create_timer(temps), "timeout")
	for i in range(numero):
		var enemic_nou = tancs[tipus-1].instance()
		add_child(enemic_nou)
		yield(get_tree().create_timer(temps), "timeout")
		
		

		
	
func text_wave(num):
	$CanvasLayer/Ones.text = "WAVE " + str(num)
	for i in range(5):
		$CanvasLayer/Ones.visible_characters +=1
		yield(get_tree().create_timer(0.2), "timeout")
	$CanvasLayer/Ones.visible_characters = -1

	yield(get_tree().create_timer(3), "timeout")
	$CanvasLayer/Ones.visible_characters = 0
		
func ona1():
	text_wave(1)
	crea_enemic(1, 2, 4)
	yield(get_tree().create_timer(12), "timeout")
	crea_enemic(1, 1, 1)
	yield(get_tree().create_timer(10), "timeout")
	ona2()
	
func ona2():
	text_wave(2)
	crea_enemic(1, 2, 2)
	yield(get_tree().create_timer(6), "timeout")
	crea_enemic(1, 2, 1)
	yield(get_tree().create_timer(10), "timeout")
	ona3()
	
func ona3():
	text_wave(3)
	crea_enemic(1, 2, 3)
	yield(get_tree().create_timer(9), "timeout")
	crea_enemic(2, 1, 1)
	yield(get_tree().create_timer(30), "timeout")
	ona4()
	
func ona4():
	text_wave(4)
	crea_enemic(2, 2, 3)
	yield(get_tree().create_timer(7), "timeout")
	crea_enemic(1, 3, 2)
	yield(get_tree().create_timer(5), "timeout")
	crea_enemic(2, 1, 3)
	yield(get_tree().create_timer(30), "timeout")
	ona5()
	
func ona5():
	text_wave(5)
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")	
	ona6()
	
func ona6():
	text_wave(6)	
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")	
	ona7()
	
func ona7():
	text_wave(7)
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")	
	ona8()
	
func ona8():
	text_wave(8)
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")	
	ona9()
	
func ona9():
	text_wave(9)
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")	
	ona10()
	
func ona10():
	text_wave("10")
	crea_enemic(1, 4, 5)
	crea_enemic(1, 4, 5)
	crea_enemic(1, 4, 5)
	yield(get_tree().create_timer(30), "timeout")



