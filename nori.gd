extends TextureRect
@onready var noriSheet: TextureRect = $"../noriBowl"
# Called when the node enters the scene tree for the first time.
func _get_drag_data(at_position: Vector2) -> Variant:
	var data = 1
	var prev = TextureRect.new()
	prev.texture = noriSheet.texture
	prev.scale = Vector2(1.5, 1.5)
	set_drag_preview(prev)
	
	return {
		"type": "nori",
		"node": self
	}
