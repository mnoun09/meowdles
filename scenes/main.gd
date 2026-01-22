extends Node2D
var customerLoad = preload("res://stuff/customer.tscn")
var customerInstance = null

func _ready() -> void:
	loadCustomer()	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func loadCustomer():
	if global.customerExists == false:
		customerInstance = customerLoad.instantiate()
		customerInstance.position = Vector2(512, 584)
		add_child(customerInstance)
		print ("customer loaded")
		global.order()
		global.customerExists = true
	else: 
		customerInstance = customerLoad.instantiate()
		customerInstance.position = Vector2(512, 584)
		add_child(customerInstance)
		print ("customer loaded")
		#play a reaction
		await get_tree().create_timer(1.0).timeout
		clearCustomer()
		global.customerExists = false
		await get_tree().create_timer(2.0).timeout

		loadCustomer()
		pass
	#input reaction here?
	

func clearCustomer():
	if is_instance_valid(customerInstance):
		customerInstance.remove()
		await get_tree().create_timer(1.0).timeout
		customerInstance.queue_free()
		customerInstance = null
		print ("customer cleared")
	pass
