extends Node2D
var customer = preload("res://stuff/customer.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var customerInstance = customer.instantiate()
	customerInstance.position = Vector2(512, 584)
	add_child(customerInstance)
	print ("customer loaded")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn(scene: PackedScene):
	print ("added")
	var instance = scene.instantiate()
	instance.position = Vector2(688, 424)
	add_child(instance)
