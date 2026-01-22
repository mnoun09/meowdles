extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.customerExists == false:
		fadeIn()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func fadeIn():
	modulate.a = 0.0
	var tween = create_tween()
	print ("fade in")
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "modulate:a", 1.0, 1.3)

func remove():
	modulate.a = 1
	var tween = create_tween()
	print ("fade out")
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(self, "modulate:a", 0, 1.3)
