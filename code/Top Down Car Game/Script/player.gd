extends Area2D

var car_pos = 1

func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		car_pos +=1
		
	if car_pos == 1:
		position.x = 125
	if car_pos == 2:
		position.x = 190
	if car_pos == 3:
		position.x = 260
	if car_pos == 4:
		position.x = 330
	if car_pos == 5:
		car_pos = 1

		
		
