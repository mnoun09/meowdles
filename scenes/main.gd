extends Node2D
var customerLoad = preload("res://stuff/customer.tscn")
var orderPreview = preload("res://stuff/order_preview.tscn")
var customerInstance = null

func _ready() -> void:
	loadCustomer()	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func loadCustomer():
	if global.customerExists == false:
		customerInstance = customerLoad.instantiate()
		customerInstance.position = Vector2(512, 578)
		add_child(customerInstance)
		print ("customer loaded")
		global.order()
		global.customerOrderPreview()
		showOrderPreview()
		global.customerExists = true
	else: 
		customerInstance = customerLoad.instantiate()
		customerInstance.position = Vector2(512, 578)
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
	
func showOrderPreview():
	var instance = orderPreview.instantiate()
	instance.position = Vector2(630, 450)
	instance.z_index = 999
	add_child(instance)
