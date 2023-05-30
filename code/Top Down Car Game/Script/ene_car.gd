extends Area2D

var truck_pos: int = rand_range(1, 5)

func _ready():
	randomize()
	position.y = -100
	if truck_pos == 1:
		position.x = 125
	if truck_pos == 2:
		position.x = 190
	if truck_pos == 3:
		position.x = 260
	if truck_pos == 4:
		position.x = 330


func _process(delta):
	position.y += DynamicManager.Speed
