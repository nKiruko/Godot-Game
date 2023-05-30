extends Node2D


func _ready():
	$Button.grab_focus()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/level4.tscn")
	DynamicManager.Speed = 3
	DynamicManager.time = 310
	DynamicManager.oil = 1.8
	DynamicManager.oilTime = 650
	DynamicManager.porsche = 4
	DynamicManager.porscheTime = 500
	DynamicManager.person = 2.5
	DynamicManager.personTime = 1000

func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/Levels.tscn")


