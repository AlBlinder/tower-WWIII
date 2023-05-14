extends Path2D

var text
var tancs = [preload("res://Tanc1.tscn"), preload("res://Tanc2.tscn"), preload("res://Tanc3.tscn")]
var acabada = false

# Called when the node enters the scene tree for the first time.
func _ready():
	ona9()
	$CanvasLayer/Ones.visible_characters = 0
		

	#crea_enemic(1,4,1)


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
	acabada = false
	text_wave(1)
	crea_enemic(1, 2, 4)
	yield(get_tree().create_timer(12), "timeout")
	crea_enemic(1, 1, 1)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true 
	print(acabada)
	ona2()

	
func ona2():
	acabada = false
	text_wave(2)
	crea_enemic(1, 2, 2)
	yield(get_tree().create_timer(6), "timeout")
	crea_enemic(1, 2, 1)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true
	ona3()
	
func ona3():
	acabada = false
	text_wave(3)
	crea_enemic(1, 2, 3)
	yield(get_tree().create_timer(9), "timeout")
	crea_enemic(2, 1, 1)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true
	ona4()
	
func ona4():
	acabada = false
	text_wave(4)
	crea_enemic(2, 2, 3)
	yield(get_tree().create_timer(7), "timeout")
	crea_enemic(1, 3, 2)
	yield(get_tree().create_timer(5), "timeout")
	crea_enemic(2, 1, 3)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true
	ona5()
	
func ona5():
	acabada = false
	text_wave(5)
	crea_enemic(2, 3, 3)
	yield(get_tree().create_timer(12), "timeout")
	crea_enemic(1, 4, 2)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true	
	ona6()
	
func ona6():
	acabada = false
	text_wave(6)	
	crea_enemic(2, 2, 1)
	yield(get_tree().create_timer(3), "timeout")
	crea_enemic(1, 2, 2)
	yield(get_tree().create_timer(6), "timeout")
	crea_enemic(1, 3, 1)
	yield(get_tree().create_timer(3), "timeout")
	crea_enemic(2, 1, 4)
	yield(get_tree().create_timer(30), "timeout")	
	acabada = true
	ona7()
	
func ona7():
	acabada = false
	text_wave(7)
	crea_enemic(1, 4, 3)
	yield(get_tree().create_timer(9), "timeout")
	crea_enemic(3, 2, 3)
	yield(get_tree().create_timer(3), "timeout")
	crea_enemic(1, 4, 3)
	yield(get_tree().create_timer(30), "timeout")	
	acabada = true
	ona8()
	
func ona8():
	acabada = false
	text_wave(8)
	crea_enemic(2, 4, 2)
	yield(get_tree().create_timer(9), "timeout")
	crea_enemic(1, 1, 0)
	crea_enemic(1, 2, 2)
	yield(get_tree().create_timer(5), "timeout")
	crea_enemic(1, 2, 3)
	yield(get_tree().create_timer(30), "timeout")	
	acabada = true
	ona9()
	
func ona9():
	acabada = false
	text_wave(9)
	crea_enemic(3, 3, 3)
	yield(get_tree().create_timer(11), "timeout")
	crea_enemic(1, 2, 0)
	crea_enemic(3, 2, 2)
	yield(get_tree().create_timer(2), "timeout")
	crea_enemic(2, 2, 2)	
	yield(get_tree().create_timer(30), "timeout")	
	acabada = true
	ona10()
	
func ona10():
	acabada = false
	text_wave("10")
	crea_enemic(2, 3, 2)
	yield(get_tree().create_timer(3), "timeout")	
	crea_enemic(3, 4, 2)
	yield(get_tree().create_timer(4), "timeout")	
	crea_enemic(1, 1, 4)
	yield(get_tree().create_timer(2), "timeout")	
	crea_enemic(3, 3, 2)
	yield(get_tree().create_timer(30), "timeout")
	acabada = true



