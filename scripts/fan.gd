extends Area2D

var blow_force: float = 40.0
#@export var max_blow_distance: float = 120.0

func _process(_delta):
	global_position = get_global_mouse_position()
	#$Sprite2D.rotation_degrees+= 10
	
	#if Input.is_action_just_pressed("enable_fan"):
		#enable_fan()
	#if Input.is_action_just_pressed("disable_fan"):
		#disable_fan()
		

func _ready() -> void:
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	enable_fan()
	
func _on_body_entered(body):
	if body.is_in_group("bubble") && body.movable :
		# please work
		#calculate direction from fan to bag
		
		var direction = body.global_position - global_position
		#distance between fan and bag
		#var distance = direction.length()
		direction = direction.normalized()
		body.apply_impulse(direction * blow_force)

func enable_fan():
	#$AnimationPlayer.active = true
	$CollisionShape2D.disabled = false

func disable_fan():
	#$AnimationPlayer.active = false
	$CollisionShape2D.disabled = true
