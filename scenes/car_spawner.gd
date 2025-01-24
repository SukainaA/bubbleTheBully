extends Node2D

const CAR = preload("res://scenes/car.tscn")
@onready var timer: Timer = $"../CarTimer"
@onready var car_spawner: Node2D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	car_spawner.add_child(CAR.instantiate())
	timer.start(randf_range(.5,1.3))
