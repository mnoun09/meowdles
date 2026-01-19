extends TextureRect
var timerScene = preload("res://stuff/timer.tscn")
var timer 
var next = preload("res://buttons/nextButton.tscn")
var noodlesInBowl = preload("res://stuff/noodlesInBowl.tscn").instantiate()
@onready var bowl = $"../Bowl"

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	return false
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	#data.get_parent().remove_child(data)
	#data = $"../nori2"
	print ("noodles added")
	addTimer()
	add_child(data)
	timer.timerDone.connect(addNoodles)

func addTimer():
	timer = timerScene.instantiate()
	add_child(timer)

func addNoodles():
	#add_child(noodlesInBowl)
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1008, 640)
	global.noodles = true
	bowl.makeVisible()
	add_child(nextButton)
