extends Area2D


func _on_body_entered(body: Node2D) -> void:
	# Get the game manager and add a coin
	var game_manager = get_tree().get_root().get_node("Game/GameManager")
	if game_manager:
		game_manager.add_coin()
	queue_free() 
