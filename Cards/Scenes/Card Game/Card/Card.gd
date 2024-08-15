extends Node

var card_suit = ""
var card_rank = ""
@export var is_faceup = false

@onready var card_front_sprite = $Front
@onready var card_back_sprite = $Back

var load_card_texture_func: Callable
var is_discard = false

signal card_selected(card)

# Called when the node enters the scene tree for the first time.
func _ready():
	update_card()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_card_type(suit, rank):
	card_suit = suit
	card_rank = rank
	update_card()

func flip():
	is_faceup = !is_faceup
	update_card()

func update_card():
	if is_faceup:
		$Back.visible = false
	else:
		$Back.visible = true
		
	if load_card_texture_func:
		load_card_texture_func.call(self)

func init_texture_load(ref: Callable):
	load_card_texture_func = ref

func toggle_discard():
	is_discard = !is_discard

func _on_button_pressed():
	toggle_discard()
	emit_signal("card_selected", self)
