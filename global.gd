extends Node

var isDragging = false
var soup = false
var noodles =  false
var nori = false
var noriCount: int
var naruto = false
var narutoCount: int

var wantSoup = false
var wantNoodles =  false
var wantNori = false
var wantNoriCount: int
var wantNaruto = false
var wantNarutoCount: int

var toppings = ["nori", "naruto", "egg", "chasu", "bamboo", "greenOnions"]

#not needed rn
var bowlPNG = "res://assets/SoupsEmptyBowl.png"

var customerOrder = ["soup", "noodles"]
var userCreation = []

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func check():
	print ("checking")
	if customerOrder == userCreation:
		print ("same")
	else:
		print ("wrong")
	
	#get customer order list count 
	#check arrays
	#get amount of false/trues 
	#generate percentage?

func order():
	var randomInt = randi_range(0, 5)
	for i in range(randomInt):
		var topping = toppings.pick_random()
		customerOrder.append(topping)
		print (topping)
		
		#count amount of each topping
	print (customerOrder)
	
func reset():
	pass
		
