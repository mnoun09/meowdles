class_name SceneManager extends CanvasLayer

@onready var animation: AnimationPlayer = $AnimationPlayer
var player: AnimationPlayer

func change_scene(to_scene_name: String) -> void:
	animation.play("transition_out")
	await animation.animation_finished
	get_tree().change_scene_to_file(to_scene_name)
	animation.play_backwards("transition_out")
