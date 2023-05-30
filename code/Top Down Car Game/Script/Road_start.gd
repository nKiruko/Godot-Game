extends Sprite


func _process(delta):
	position.y += 2
	if position.y > 1200:
		queue_free()
