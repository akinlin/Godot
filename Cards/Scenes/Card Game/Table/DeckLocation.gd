extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _draw():
	draw_rect(Rect2(-63, -75, 125, 150), Color.YELLOW, false, 3.0)
