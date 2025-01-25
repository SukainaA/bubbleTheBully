extends Area2D

@onready var bubble: RigidBody2D = $"../Bubble"
var test = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pop_spawn_bubble"):

		if test:
			print("pookie")
			gravity_space_override = SPACE_OVERRIDE_DISABLED


func _on_body_entered(body: Node2D) -> void:
	if body == bubble:
		test = true
