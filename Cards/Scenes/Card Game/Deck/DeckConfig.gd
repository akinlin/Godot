extends Node

@export var deck_size = 52

@export var card_suits = ["Heart", "Spade"]
var num_suits = 0
@export var card_ranks = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
var num_ranks = 0
var texture_path = "res://Art/Textures/Cards/"

# Called when the node enters the scene tree for the first time.
func _ready():
	num_suits = card_suits.size()
	num_ranks = card_ranks.size()
	deck_size = num_suits * num_ranks
