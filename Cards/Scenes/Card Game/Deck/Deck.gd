extends Node

@export var card_scene: PackedScene = null

@onready var deck_shoe = $DeckShoe
@onready var discard_pile = $DiscardPile
@onready var deck_config = $DeckConfig

var cards = []
var discards = []

# Called when the node enters the scene tree for the first time.
func _ready():
	createdeck()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func createdeck():
	for suit in deck_config.card_suits:
		for rank in deck_config.card_ranks:
			var card = card_scene.instantiate()
			card.set_card_type(suit,rank)
			var set_texture_func = Callable(self, "_set_card_texture")
			card.init_texture_load(set_texture_func)
			deck_shoe.add_child(card)
			cards.append(card)
	shuffle_deck()

func shuffle_deck():
	cards.shuffle()

func draw_card():
	if cards.size() > 0:
		var delt_card = cards.pop_back()
		delt_card.flip()
		deck_shoe.remove_child(delt_card)
		return delt_card
	return null

func discard_card(card):
	discards.append(card)
	discard_pile.add_child(card)

func _set_card_texture(card):
	var texture = load(deck_config.texture_path + card.card_suit + "/" + card.card_rank + ".png")
	card.card_front_sprite.texture = texture
