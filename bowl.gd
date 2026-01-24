extends TextureRect
@onready var noriSheet: TextureRect = $"../nori2"
@onready var noriBowl = $"../noriBowl"
@onready var noriBowl2 = $"../noriBowl2"
@onready var tempNaruto = $"../tempNaruto"

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	return false
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	var item = data.node
	var type = data.type
	print(type)
	if type == "nori":
		global.userCreation.append("nori")
		data = $"../nori2"
		print ("added")
		global.noriCount += 1
		global.nori = true
		noriBowl.visible = global.nori
		if global.noriCount > 1 :
			noriBowl2.visible = global.nori
		print (global.nori)
		add_child(data)
	if type == "naruto":
		global.userCreation.append("naruto")
		data = $"../narutoStation"
		print ("added")
		global.narutoCount += 1
		global.naruto = true
		tempNaruto.visible = global.naruto
		print (global.naruto)
		add_child(data)
	
	
