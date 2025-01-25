extends Area2D

@export var camera1: Camera2D
@export var camera2: Camera2D






func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("bubble"):
		print("body entered")
		camera1.enabled = true
		camera2.enabled = false
		Debug.curr_scene=3
		body.global_position.x = 1275 * 3
		body.global_position.y = 75
		body.gravity_scale = 0
		body.linear_velocity.x = 0
		body.linear_velocity.y = 0

		
