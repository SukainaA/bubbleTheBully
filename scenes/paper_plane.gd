extends Node2D

@onready var static_body_2d: RigidBody2D = $StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	static_body_2d.constant_force.x = randi_range(-200, -100)
	static_body_2d.constant_force.y = randi_range(-80, -30)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
