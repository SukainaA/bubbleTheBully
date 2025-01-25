extends Label

var full_text = "Bubble the Bully"
var display_text = ""
var char_index = 0
var time_elapsed = 0.0

func _ready():
	text = ""
	$Timer.connect("timeout", Callable(self, "_on_Timer_timeout"))
	$Timer.start()

func _process(delta):
	time_elapsed += delta
	# Subtle vertical wave effect
	position.y = sin(time_elapsed * 5) * 2

func _on_Timer_timeout():
	if char_index < full_text.length():
		display_text += full_text[char_index]
		text = display_text
		char_index += 1
	else:
		$Timer.stop()
