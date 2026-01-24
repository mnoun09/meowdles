extends TextureRect
@onready var noriSheet: TextureRect = $"../noriBowl"
@onready var noriBowl = $"../noriBowl"
@onready var noriBowl2 = $"../noriBowl2"

@onready var shoyu = $"../Shoyu"
@onready var tonk = $"../Tonk"
@onready var naruto = $"../Naruto2"
@onready var egg = $"../Egg2"
@onready var bamboo = $"../Bamboo2"
@onready var greenOnion = $"../GreenOnionBowl"
@onready var chashu = $"../Chashu2"

func _ready() -> void:
	if global.shoyu:
		shoyu.visible = true
	if global.tonk:
		tonk.visible = true

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
		naruto.visible = global.naruto
		print (global.naruto)
		add_child(data)
	if type == "egg":
		global.userCreation.append("egg")
		data = $"../Egg"
		print ("added")
		global.eggCount += 1
		global.egg = true
		egg.visible = global.egg
		print (global.egg)
		add_child(data)
	if type == "bamboo":
		global.userCreation.append("bamboo")
		data = $"../Bamboo"
		print ("added")
		global.bambooCount += 1
		global.bamboo = true
		bamboo.visible = global.bamboo
		print (global.bamboo)
		add_child(data)
	if type == "greenOnion":
		global.userCreation.append("greenOnion")
		data = $"../GreenOnion"
		print ("added")
		global.greenOnionCount += 1
		global.greenOnion = true
		greenOnion.visible = global.greenOnion
		print (global.greenOnion)
		add_child(data)
	if type == "chashu":
		global.userCreation.append("chashu")
		data = $"../Chashu"
		print ("added")
		global.chashuCount += 1
		global.chashu = true
		chashu.visible = global.chashu
		print (global.chashu)
		add_child(data)
	
	
