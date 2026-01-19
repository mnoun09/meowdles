extends Node2D

var dragging = false
var draggable = false
var insideDropable = false
var dropLocked = false
var bodyRef: Node2D
var offset: Vector2
var initialPos: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if draggable:
		
		if dragging:
			global_position = get_global_mouse_position() - offset

func _input(event):
	if not draggable:
		return
	
	if event is InputEventMouseButton  and event.button_index == MOUSE_BUTTON_LEFT:
		
		if event.pressed:
			offset = get_global_mouse_position() - global_position
			global.isDragging = true
			print ("clicked")
			dropLocked = false
			initialPos = global_position
			dragging = true
			offset = get_global_mouse_position() - global_position
			print ("event")
			
		else:
			global.isDragging = false
			dragging = false
			var tween = get_tree().create_tween()
			
			
			if insideDropable and bodyRef:
				print ("doing this")
				#tween.tween_property(self, "global_position", bodyRef.global_position, 0.2).set_ease(Tween.EASE_OUT)

			else:
				print ("working")
				tween.tween_property(self, "global_position", initialPos, 0.2).set_ease(Tween.EASE_OUT)


func _on_area_2d_mouse_entered() -> void:
	if not global.isDragging:
		draggable = true
		scale = Vector2(1.01,1.01)
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	if not global.isDragging and not dragging:
		draggable = false
		scale = Vector2(1.00,1.00)
	pass # Replace with function body.


func _on_area_2d_body_entered(body: StaticBody2D) -> void:
	if body.is_in_group("dropable"):
		print ("inside dropable")
		insideDropable = true
		bodyRef = body
	pass # Replace with function body.


func _on_area_2d_body_exited(body: StaticBody2D) -> void:
	if body.is_in_group("dropable"):
		print ("not inside")
		insideDropable = false

	pass # Replace with function body.
