extends StaticBody2D
@onready var shoyu = $Shoyu
@onready var tonk = $Tonkotsu
@onready var noodles = $NoodlesinBowl
@onready var nori = $Nori
@onready var naruto = $Naruto
var next = preload("res://buttons/nextButton.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	makeVisible()
	#ingredients()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_pot_clicked() -> void:
	if global.tonk == false:
		if global.shoyu == true:
			global.shoyu = false
			global.tonk = true
			global.userCreation.erase("shoyu")
			shoyu.visible = false
		global.tonk = true
		global.userCreation.append("tonk")
		makeVisible()
		print ("shoyu")
		print (global.shoyu)
		print ("tonk")
		print (global.tonk)
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1008, 640)
	add_child(nextButton)

func makeVisible():
	if global.shoyu:
		shoyu.visible = global.shoyu
	if global.tonk:
		tonk.visible = global.tonk
	if global.noodles:
		noodles.visible = global.noodles
	if global.nori:
		nori.visible = global.nori
	if global.naruto:
		naruto.visible = global.naruto
		
func ingredients():
	print ("Soup: " + str(global.soup))
	print ("Noodles: " + str(global.noodles))
	print ("Nori: " + str(global.nori))
	print ("Naruto: " + str(global.naruto))


func _on_pot_2_pot_clicked() -> void:
	if global.shoyu == false:
		if global.tonk == true:
			global.tonk = false
			global.userCreation.erase("tonk")
			makeVisible()
			tonk.visible = false
			global.shoyu = true
		global.shoyu = true
		global.userCreation.append("shoyu")
		print ("shoyu")
		print (global.shoyu)
		print ("tonk")
		print (global.tonk)
		makeVisible()
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1008, 640)
	add_child(nextButton)
