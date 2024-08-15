extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	var dynamic_font = FontFile.new()
	dynamic_font.font_data = load("res://Assets/Fonts/Nordic Alternative Regular.ttf")
	#dynamic_font.size = 50.0
	self.add_theme_font_override("font", dynamic_font)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
