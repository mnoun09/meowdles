extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	order()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func order():
	if global.wantShoyu:
		$Shoyu.visible = true
	if global.wantTonk:
		$Tonk.visible = true
	if global.wantNoodles:
		$Noodles.visible = true
	if global.wantNori:
		$Nori.visible = true
	if global.wantNaruto:
		$Naruto.visible = true
	if global.wantEgg:
		$Egg.visible = true
	if global.wantBamboo:
		$Bamboo.visible = true
	if global.wantGreenOnion:
		$GreenOnion.visible = true
	if global.wantChashu:
		$Chashu.visible = true
