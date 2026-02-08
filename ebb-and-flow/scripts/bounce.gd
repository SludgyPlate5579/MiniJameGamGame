static func bounce (sprite: Sprite2D, delta, height: int, width: int, rotation: int):
	sprite.scale = Vector2(width, height)
	sprite.set_rotation_degrees(rotation)
	
	sprite.rotation = move_toward(sprite.rotation, 1, 1 * delta)
	sprite.scale.x = move_toward(sprite.scale.x, 1, 1 * delta)
	sprite.scale.y = move_toward(sprite.scale.y, 1, 1 * delta)
	return
