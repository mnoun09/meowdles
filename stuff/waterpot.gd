extends Node2D
@onready var noodles = $NoodlesInPot
var timerScene = preload("res://stuff/timer.tscn")
var timer 
var next = preload("res://buttons/nextButton.tscn")
var noodlesInBowl = preload("res://stuff/noodlesInBowl.tscn").instantiate()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_noodles_noodles_clicked() -> void:
	noodles.visible = true
	addTimer()
	timer.timerDone.connect(addNoodles)
	pass # Replace with function body.

func addTimer():
	timer = timerScene.instantiate()
	add_child(timer)

func addNoodles():
	add_child(noodlesInBowl)
