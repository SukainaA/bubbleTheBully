extends RigidBody2D

@export var pop_scale_duration: float = 0.2
var is_popping: bool = false
var lives = 0

var movable :bool = true



func _ready() -> void:
	lives = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pop_spawn_bubble"):
		gravity_scale = 0.3

func bubble_pop():
	is_popping = true
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2.ZERO, pop_scale_duration)
	tween.tween_callback(queue_free)


func _on_body_entered(body: Node) -> void:
	print(lives)
	if ! body.is_in_group("fan") && lives != 0:
		if Debug.curr_scene == 0:
			global_position.x = 150 * 1
			global_position.y = 150
			gravity_scale = 0
			linear_velocity.x = 0
			linear_velocity.y = 0
		if Debug.curr_scene == 1:
			global_position.x = 1275 * 1
			global_position.y = 150
			gravity_scale = 0
			linear_velocity.x = 0
			linear_velocity.y = 0
		if Debug.curr_scene == 2:
			global_position.x = 1275 * 2
			global_position.y = 75
			gravity_scale = 0
			linear_velocity.x = 0
			linear_velocity.y = 0
		if Debug.curr_scene == 3:
			global_position.x = 1275 * 3
			global_position.y = 75
			gravity_scale = 0
			linear_velocity.x = 0
			linear_velocity.y = 0
		if Debug.curr_scene == 4:
			global_position.x = 1275 * 4
			global_position.y = 75
			gravity_scale = 0
			linear_velocity.x = 0
			linear_velocity.y = 0
		Debug.lives -=1
		lives -= 1
		$Timer.start()
		if lives == 0:
			bubble_pop()
	
			


func _on_timer_timeout() -> void:
	if get_colliding_bodies().size() > 0:
		lives -=1
