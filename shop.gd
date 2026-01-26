extends MarginContainer

var currItem = 0
var select = 0

func _ready() -> void:
	$HBoxContainer/coins/coinLabel.text = str(global.coins)
	$Stuff/HBoxContainer3/VBoxContainer/Name.text = global.items[currItem]["Name"]
	$Stuff/HBoxContainer3/VBoxContainer/Des.text = global.items[currItem]["Des"]
	$Stuff/HBoxContainer3/VBoxContainer/Des.text += "\nCost: " + str(global.items[currItem]["Cost"])

func switchItem(select):
	for i in range(global.items.size()):
		if select == i:
			currItem = select
			print (global.items[currItem])
			$Stuff/HBoxContainer3/Panel/TextureRect.texture = global.items[currItem]["Image"]
			$Stuff/HBoxContainer3/VBoxContainer/Name.text = global.items[currItem]["Name"]
			$Stuff/HBoxContainer3/VBoxContainer/Des.text = global.items[currItem]["Des"]
			$Stuff/HBoxContainer3/VBoxContainer/Des.text += "\nCost: " + str(global.items[currItem]["Cost"])

func _on_left_pressed() -> void:
	$Stuff/HBoxContainer3/VBoxContainer/bought.visible = false
	switchItem(currItem-1)
	
	pass # Replace with function body.

func _on_right_pressed() -> void:
	$Stuff/HBoxContainer3/VBoxContainer/bought.visible = false
	switchItem(currItem+1)
	
func _on_buy_pressed() -> void:
	var hasItem = false
	for i in global.inventory:
		if global.inventory[i]["Name"] == global.items[currItem]["Name"]:
			hasItem = true
			$Stuff/HBoxContainer3/VBoxContainer/bought.visible = true
			$Stuff/HBoxContainer3/VBoxContainer/bought.text = "already have"
	if hasItem == false and global.coins >= global.items[currItem]["Cost"]:
		global.inventory[global.inventory.size()] = global.items[currItem]
		global.coins -= global.items[currItem]["Cost"]
		print (global.coins)
		$Stuff/HBoxContainer3/VBoxContainer/bought.text = "bought!"
		$HBoxContainer/coins/coinLabel.text = str(global.coins)
		$Stuff/HBoxContainer3/VBoxContainer/bought.visible = true
		hasItem = true
	else: 
		if hasItem == false:
			$Stuff/HBoxContainer3/VBoxContainer/bought.text = "not enough coins"
			$Stuff/HBoxContainer3/VBoxContainer/bought.visible = true
	
