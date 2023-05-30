extends Area2D


var person_pos: int = rand_range(1, 3)

func _ready():
	randomize()
	position.y = -100
	if person_pos == 1:
		position.x = 90
	if person_pos == 2:
		position.x = 380
	print(person_pos)


func _process(delta):
	position.y += 1.8
	if person_pos == 1:
		yield(get_tree().create_timer(2), "timeout")
		position.x += DynamicManager.person # move to the right
	elif person_pos == 2:
		rotation_degrees = -180
		yield(get_tree().create_timer(2), "timeout")
		position.x -= DynamicManager.person # move to the left
