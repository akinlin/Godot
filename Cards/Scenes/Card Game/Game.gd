extends Node

@onready var player = $Player
@onready var table = $Table
@onready var UI = $UI

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_deal_button_pressed():
	if player.get_hand_count() < table.get_hand_size():
		var hand = table.deal_hand(player.get_hand_count())
		if hand:
			player.add_hand_cards(hand)

func _on_discard_button_pressed():
	var cards = player.discard()
	if cards:
		table.discard(cards)
