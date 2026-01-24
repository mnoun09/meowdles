extends TextureRect
@onready var noriSheet: TextureRect = $"../nori2"

func _get_drag_data(at_position: Vector2) -> Variant:
	var data = 1
	var prev = TextureRect.new()
	prev.texture = noriSheet.texture
	set_drag_preview(prev)
	
	return {
		"type": "egg",
		"node": self
	}
