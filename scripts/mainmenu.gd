extends Control

func _ready():
	# Center buttons vertically
	$VBoxContainer.position = Vector2(
		get_viewport_rect().size.x / 2 - $VBoxContainer.size.x / 2,
		get_viewport_rect().size.y / 2 - $VBoxContainer.size.y / 2
	)
	

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/1.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
