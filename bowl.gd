extends TextureRect
@onready var noriSheet: TextureRect = $"../nori2"
@onready var noriBowl = $"../noriBowl"
@onready var noriBowl2 = $"../noriBowl2"

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	return false
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	#data.get_parent().remove_child(data)
	data = $"../nori2"
	print ("added")
	global.noriCount += 1
	global.nori = true
	noriBowl.visible = global.nori
	if global.noriCount > 1 :
		noriBowl2.visible = global.nori
	print (global.nori)
	add_child(data)
	
