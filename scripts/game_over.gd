extends CanvasLayer

func _process(delta: float) -> void:
	if Debug.lives == 0:
		self.visible = true

func _on_button_pressed() -> void:
	self.visible = false  # Hide the Game Over screen
	Debug.lives = 3  # Reset lives
	get_tree().change_scene_to_file("res://scenes/level.tscn")
