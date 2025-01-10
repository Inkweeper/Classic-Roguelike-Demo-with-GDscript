extends Camera2D

func _process(delta: float) -> void:
	if GlobalValue.player == null:
		return
	else:
		position = Vector2i(lerp(position, GlobalValue.player.position, 0.1))
