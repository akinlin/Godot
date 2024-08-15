extends Node

@export var chips = 1000

@onready var hand = $Hand

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_hand_cards(cards):
	for i in range(cards.size()):
		var card = cards[i]
		if card:
			hand.add_card(card)

func discard():
	return hand.discard()

func get_played_hand():
	return hand.play_hand()

func get_hand_count():
	return hand.hand.size()
