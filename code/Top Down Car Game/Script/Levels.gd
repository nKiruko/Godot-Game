extends Node2D

func _ready():
	$Button3.grab_focus()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/level2.tscn")  # Level 2
	DynamicManager.Speed = 2.3
	DynamicManager.time = 310
	DynamicManager.oil = 1.8
	DynamicManager.oilTime = 650
	
func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/Main_Menu.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/level1.tscn") # Level 1
	DynamicManager.Speed = 2
	DynamicManager.time = 310


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/level3.tscn") # Level 3
	DynamicManager.Speed = 2.7
	DynamicManager.time = 310
	DynamicManager.oil = 1.8
	DynamicManager.oilTime = 650
	DynamicManager.porsche = 4
	DynamicManager.porscheTime = 500


func _on_Button5_pressed():
	get_tree().change_scene("res://Scenes/level4.tscn") # Level 4
	DynamicManager.Speed = 3
	DynamicManager.time = 310
	DynamicManager.oil = 1.8
	DynamicManager.oilTime = 650
	DynamicManager.porsche = 4
	DynamicManager.porscheTime = 500
	DynamicManager.person = 2.5
	DynamicManager.personTime = 1000
	
