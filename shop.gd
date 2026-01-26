extends MarginContainer

var currItem = 0
var select = 0

func _ready() -> void:
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
	#currItem -= 1
	switchItem(currItem-1)
	
	pass # Replace with function body.

func _on_right_pressed() -> void:
	#currItem += 1
	switchItem(currItem+1)
	
func _on_buy_pressed() -> void:
	pass
