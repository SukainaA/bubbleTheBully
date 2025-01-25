extends AnimatedSprite2D

@onready var p_player: AnimationPlayer = $pPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pop_spawn_bubble"):
		p_player.play("pDisappear")
