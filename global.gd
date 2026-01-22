extends Node

signal checking

var customerLoad = preload("res://stuff/customer.tscn")

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

var customerInstance = customerLoad.instantiate()
var customerExists = false


func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
#put customer reaction here
func check():
	emit_signal("checking")
	print ("checking")
	if customerOrder == userCreation:
		print ("same")
	else:
		print ("wrong")
		
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
	customerOrder = ["soup", "noodles"]
	userCreation = []
	customerExists = false
