extends Node2D

@onready var animation_player: AnimationPlayer = $Bird/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_player.speed_scale = randf_range(1, 1.5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
