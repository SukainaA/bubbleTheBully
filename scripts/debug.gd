extends Node

var lives = 3
var curr_scene = 0

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_released("debug"):
		get_tree().change_scene_to_file("res://scenes/level.tscn")
