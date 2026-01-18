extends StaticBody2D
@onready var soup = $Soup
var next = preload("res://buttons/nextButton.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_pot_clicked() -> void:
	soup.visible = true
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1008, 640)
	add_child(nextButton)
	pass # Replace with function body.
