extends Area2D

@export var camera1: Camera2D
@export var camera2: Camera2D




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("bubble"):
		camera1.enabled = false
		camera2.enabled = true
		body.global_position.x = 1275
		body.position.y = 65
		body.gravity_scale = 0
