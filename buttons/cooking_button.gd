extends Control
@onready var icon = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	sceneManager.change_scene("res://scenes/kitchen.tscn")
	print ("cooking")
	pass # Replace with function body.

func spawn():
	icon.modulate.a = 0.0
	var tween = create_tween()

	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(icon, "modulate:a", 1.0, 1.0)
	
