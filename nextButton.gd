extends Control

var currentScene 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentScene = get_tree().get_current_scene()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	print ("next")
	print (currentScene.name)
	if currentScene.name == "Kitchen":
		get_tree().change_scene_to_file("res://scenes/noodlesScene.tscn")
	elif currentScene.name == "Noodles":
		get_tree().change_scene_to_file("res://scenes/toppings_station.tscn")
	
	pass # Replace with function body.
