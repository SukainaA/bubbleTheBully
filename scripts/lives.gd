extends Control

@onready var life_1: Sprite2D = $life1
@onready var life_2: Sprite2D = $life2
@onready var life_3: Sprite2D = $life3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Debug.lives == 2:
		life_3.visible = false
	if Debug.lives == 1:
		life_2.visible = false
	if Debug.lives == 0:
		life_1.visible = false
