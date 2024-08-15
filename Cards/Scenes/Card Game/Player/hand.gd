extends Node2D

var handsize = -1
var discards = -1
var discards_remaining = -1

var hand = []
var discard_array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_card(card):
	hand.append(card)
	add_child(card)
	card.connect("card_selected", Callable(self, "_on_card_selected"))
	update_hand()

func remove_card(card):
	hand.erase(card)
	remove_child(card)
	update_hand()

func discard():
	var returned_card = discard_array
	for i in range(returned_card.size()):
		var card = discard_array[i]
		card.flip()
		card.position = Vector2(0, 0)
		remove_card(card)
	discard_array.clear()
	return returned_card

func _on_card_selected(card):
	if card in discard_array:
		discard_array.erase(card)
		card.position.y = -100
	else:
		discard_array.append(card)
		card.position.y = 0
	update_hand()

func update_hand():
	for i in range(hand.size()):
		var card = hand[i]
		var y_pos = 0
		var x_pos = i * 100
		if card in discard_array:
			y_pos = -100
		card.position = Vector2(x_pos, y_pos)
