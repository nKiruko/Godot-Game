extends Area2D


var porsche_pos: int = rand_range(1, 5)

func _ready():
	randomize()
	position.y = -100
	if porsche_pos == 1:
		position.x = 125
	if porsche_pos == 2:
		position.x = 190
	if porsche_pos == 3:
		position.x = 260
	if porsche_pos == 4:
		position.x = 330


func _process(delta):
	position.y += DynamicManager.porsche
