extends Node

#exported variables
@export var sprite: AnimatedSprite2D = null
@export var height: float = 1
@export var width: float = 1
@export var rotation: float = 0
@export var bounceSpeed: float = 5

#code specific variables
var initScale
var initRotation
var isBounce: bool = false

func _ready() -> void:
	initScale = Vector2(sprite.scale.x, sprite.scale.y)
	initRotation = sprite.rotation

func _process(delta: float) -> void:
	if (sprite.scale == initScale && sprite.rotation == initRotation):
		isBounce = true
	elif (sprite.scale == Vector2(width, height) && sprite.rotation == rotation):
		isBounce = false
	
	if (isBounce):
		sprite.rotation = move_toward(sprite.rotation, rotation, bounceSpeed * delta)
		sprite.scale.x = move_toward(sprite.scale.x, width, bounceSpeed * delta)
		sprite.scale.y = move_toward(sprite.scale.y, height, bounceSpeed * delta)
	else:
		sprite.rotation = move_toward(sprite.rotation, initRotation, bounceSpeed * delta)
		sprite.scale.x = move_toward(sprite.scale.x, initScale.x, bounceSpeed * delta)
		sprite.scale.y = move_toward(sprite.scale.y, initScale.y, bounceSpeed * delta)
		
	
