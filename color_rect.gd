extends ColorRect

func _ready():
	material = ShaderMaterial.new()
	material.shader = Shader.new()
	material.shader.code = """
	shader_type canvas_item;
	
	uniform vec4 top_color : source_color = vec4(0.2, 0.6, 0.86, 1.0);
	uniform vec4 bottom_color : source_color = vec4(0.1, 0.3, 0.5, 1.0);
	
	void fragment() {
		vec4 gradient = mix(bottom_color, top_color, UV.y);
		COLOR = gradient;
	}
	"""
