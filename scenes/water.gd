extends TextureRect
var timerScene = preload("res://stuff/timer.tscn")
var timer 
@onready var noodlesInPot = $"../NoodlesInPot"
var next = preload("res://buttons/nextButton.tscn")
var noodlesInBowl = preload("res://stuff/noodlesInBowl.tscn").instantiate()
@onready var bowl = $"../Bowl"

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	return false
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	print ("noodles added")
	noodlesInPot.visible = true
	addTimer()
	add_child(data)
	
	timer.timerDone.connect(addNoodles)

func addTimer():
	
	timer = timerScene.instantiate()
	print (timer.position)
	add_child(timer)

func addNoodles():
	#add_child(noodlesInBowl)
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1480, 480)
	global.noodles = true
	noodlesInPot.visible = false
	global.userCreation.append("noodles")
	#makes the noodles show
	bowl.makeVisible()
	add_child(nextButton)
