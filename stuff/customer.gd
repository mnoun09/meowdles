extends Node2D
@onready var customer = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn()
	global.order()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func spawn():
	customer.modulate.a = 0.0
	var tween = create_tween()

	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CIRC)
	tween.tween_property(customer, "modulate:a", 1.0, 1.0)
	
