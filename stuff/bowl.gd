extends StaticBody2D
@onready var soup = $Soup
@onready var noodles = $Noodles
@onready var nori = $Nori
@onready var naruto = $Naruto
var next = preload("res://buttons/nextButton.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ingredients()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_pot_clicked() -> void:
	global.soup = true
	makeVisible()
	var nextButton = next.instantiate()
	nextButton.position = Vector2i(1008, 640)
	add_child(nextButton)
	pass # Replace with function body.

func makeVisible():
	if global.soup:
		soup.visible = global.soup
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
