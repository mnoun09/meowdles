extends TextureRect
@onready var bamboo: TextureRect = $"."
# Called when the node enters the scene tree for the first time.
func _get_drag_data(at_position: Vector2) -> Variant:
	var data = 1
	var prev = TextureRect.new()
	prev.texture = bamboo.texture
	set_drag_preview(prev)
	
	return {
		"type": "bamboo",
		"node": self
	}
