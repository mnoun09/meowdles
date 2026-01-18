extends Node2D
@onready var label = $Label
@onready var timer = $Timer2
signal timerDone

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = str(timer.time_left).pad_decimals(0)
	pass


func _on_timer_2_timeout() -> void:
	print("time done")
	emit_signal("timerDone")
	queue_free()
	pass # Replace with function body.
