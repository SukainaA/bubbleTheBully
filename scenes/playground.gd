extends Node2D
@onready var plane_spawner: Node2D = $PlaneSpawner

@onready var timer: Timer = $Timer
const PAPER_PLANE = preload("res://scenes/paper_plane.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var plane = PAPER_PLANE.instantiate()
	plane.position = plane_spawner.position
	print(plane.position)
	plane_spawner.add_child(plane)
	timer.start(randf_range(1.0, 2.2))


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("projectile"):
		body.queue_free()
