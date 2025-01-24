extends RigidBody2D

@export var pop_scale_duration: float = 0.2
var is_popping: bool = false
var lives = 0

var movable :bool = true



func _ready() -> void:
	lives = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:

	pass

func bubble_pop():
	is_popping = true
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2.ZERO, pop_scale_duration)
	tween.tween_callback(queue_free)


func _on_body_entered(body: Node) -> void:
	print(lives)
	if ! body.is_in_group("fan") && lives != 0:
		lives -= 1
		$Timer.start()
		if lives == 0:
			bubble_pop()
	
			


func _on_timer_timeout() -> void:
	if get_colliding_bodies().size() > 0:
		lives -=1
