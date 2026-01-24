extends Node

signal checking

var customerLoad = preload("res://stuff/customer.tscn")
var correct = preload("res://stuff/same.tscn")
var wrong = preload("res://stuff/wrong.tscn")

var isDragging = false
var soup = false
var noodles =  false
var nori = false
var noriCount: int
var naruto = false
var narutoCount: int
var egg = false
var eggCount: int
var bamboo = false
var bambooCount: int
var greenOnion = false
var greenOnionCount: int
var chashu = false
var chashuCount: int

var wantSoup = false
var wantNoodles =  false
var wantNori = false
var wantNoriCount: int
var wantNaruto = false
var wantNarutoCount: int
var wantEgg = false
var wantEggCount: int
var wantBamboo = false
var wantBambooCount: int
var wantGreenOnion = false
var wantGreenOnionCount: int
var wantChashu = false
var wantChashuCount: int

var toppings = ["nori", "naruto", "egg", "bamboo", "greenOnion", "chashu"]

#not needed rn
var bowlPNG = "res://assets/SoupsEmptyBowl.png"

var customerOrder = ["soup", "noodles"]
var userCreation = []

var customerInstance = customerLoad.instantiate()
var customerExists = false


func _ready() -> void:
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
#put customer reaction here
func check():
	
	print (userCreation)
	emit_signal("checking")
	print ("checking")
	if customerOrder == userCreation:
		print ("same")
		spawn(correct)
	else:
		print ("wrong")
		spawn(wrong)
		
	await get_tree().create_timer(2.0).timeout
	
	#customer.remove()
	reset() 
	#get customer order list count 
	#check arrays
	#get amount of false/trues 
	#generate percentage?

func order():
	if customerOrder == ["soup", "noodles"]:
		var randomInt = randi_range(0, toppings.size())
		for i in range(randomInt):
			var topping = toppings.pick_random()
			customerOrder.append(topping)
			toppings.erase(topping)
			print (topping)
		#count amount of each topping
	print (customerOrder)
	
func reset():
	print ("reset")
	isDragging = false
	soup = false
	noodles =  false
	nori = false
	noriCount = 0
	naruto = false
	narutoCount = 0
	egg = false
	eggCount = 0
	bamboo = false
	bambooCount = 0
	greenOnion = false
	greenOnionCount = 0
	chashu = false
	chashuCount = 0

	customerOrder = ["soup", "noodles"]
	toppings = ["nori", "naruto", "egg", "bamboo", "greenOnion", "chashu"]
	userCreation = []
	customerExists = false
	
	wantSoup = false
	wantNoodles = false
	wantNori = false
	wantNoriCount = 0
	wantNaruto = false
	wantNarutoCount = 0
	wantEgg = false
	wantEggCount = 0
	wantBamboo = false
	wantBambooCount = 0
	wantGreenOnion = false
	wantGreenOnionCount = 0
	wantChashu = false
	wantChashuCount = 0
	
func customerOrderPreview():

	if customerOrder.has("soup"):
		wantSoup = true
	if customerOrder.has("noodles"):
		wantNoodles = true
	if customerOrder.has("nori"):
		wantNori = true
		wantNoriCount = customerOrder.count("nori")
	if customerOrder.has("naruto"):
		wantNaruto = true
		wantNarutoCount = customerOrder.count("naruto")
	if customerOrder.has("egg"):
		wantEgg = true
		wantEggCount = customerOrder.count("egg")
	if customerOrder.has("bamboo"):
		wantBamboo = true
		wantBambooCount = customerOrder.count("Bamboo")
	if customerOrder.has("greenOnion"):
		wantGreenOnion = true
		wantGreenOnionCount = customerOrder.count("greenOnion")
	if customerOrder.has("chashu"):
		wantChashu = true
		wantChashuCount = customerOrder.count("chashu")

func spawn(scene: PackedScene):
	print ("added")
	var instance = scene.instantiate()
	instance.position = Vector2(688, 424)
	instance.z_index = 999
	add_child(instance)
	await get_tree().create_timer(0.9).timeout
	instance.queue_free()
