extends Sprite

func _ready():
	position.x = 423.799
	position.y = -290

func _process(delta):
	position.y += 2
	if position.y > 1200:
		queue_free()
