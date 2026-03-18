extends Node2D
var direction = Vector2.ZERO
var speed = 500

func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	position += direction * speed * delta
	
	if not get_viewport_rect().has_point(position):
		queue_free()
