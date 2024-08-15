extends Node

@onready var game_rules = $GameRules
@onready var deck = $Deck
@onready var deck_location = $DeckLocation

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func deal_hand(hand_count):
	var hand = []
	for i in range(hand_count, game_rules.handsize):
		var drawn_card = deck.draw_card()
		if drawn_card:
			hand.append(drawn_card)
	return hand

func discard(cards):
	for i in range(cards.size()):
		var card = cards[i]
		if card:
			deck.discard_card(card)

func get_hand_size():
	return game_rules.handsize
