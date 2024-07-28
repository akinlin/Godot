extends Node

enum Suits { Heart, Diamond, Spade, Club }
@export var suit = Suits.Heart

enum Ranks { ACE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, KING, QUEEN }
@export var rank = Ranks.ACE

@export var faceup = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func flip():
	faceup = !faceup
