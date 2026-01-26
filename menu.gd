extends MarginContainer

@export var menuScreen: VBoxContainer
@export var shopScreen: VBoxContainer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func toggleVisibility(object):
	if object.visible:
		object.visible = false
	else:
		object.visible = true
	pass


func _on_top_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	pass # Replace with function body.


func _on_middle_pressed() -> void:
	toggleVisibility($"../ShopMenu")
	toggleVisibility($".")
	pass # Replace with function body.


func _on_button_pressed() -> void:
	toggleVisibility($"../ShopMenu")
	toggleVisibility($".")
	pass # Replace with function body.
