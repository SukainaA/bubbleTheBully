extends RigidBody2D

@export var pop_scale_duration: float = 0.2
var is_popping: bool = false

var movable :bool = true

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:

	pass

	
# for duct logic 
#func getting_in(pos: Vector2):
	#var to_duct = pos - global_position
	#var distance = to_duct.length()
	#var speed = distance * 10  # Speed increases with distance
	#var motion = to_duct.normalized() * speed * get_process_delta_time()
	#move_and_collide(motion)	
func bubble_pop():
	is_popping = true
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2.ZERO, pop_scale_duration)
	tween.tween_callback(queue_free)


func _on_body_entered(body: Node) -> void:
	if ! body.is_in_group("fan"):
		bubble_pop()
