extends Node2D

@onready var label = $Label
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	label.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func show_result(result_text: String, duration: float, color: Color):
	# Set the label text and make it visible
	label.text = result_text
	label.visible = true
	label.set("theme_override_colors/font_color", color)

	# Start the timer with the specified duration
	timer.start(duration)

func _on_timer_timeout():
	# Hide the label when the timer times out
	label.visible = false
