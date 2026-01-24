extends TextureRect
@onready var egg: TextureRect = $"."

func _get_drag_data(at_position: Vector2) -> Variant:
	var data = 1
	var prev = TextureRect.new()
	prev.texture = egg.texture
	set_drag_preview(prev)
	
	return {
		"type": "egg",
		"node": self
	}
