extends Node

var coins_collected = 0

@onready var coin_label = $UI/CoinContainer/CoinCount


func _ready() -> void:
	update_coin_display()


func add_coin() -> void:
	coins_collected += 1
	update_coin_display()


func update_coin_display() -> void:
	if coin_label:
		coin_label.text = str(coins_collected)
