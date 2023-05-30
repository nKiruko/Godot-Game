extends Node2D


func _ready():
	MusicController.play_music()
	$PlayBtn.grab_focus()

func _on_Button2_pressed():
	get_tree().quit()

func _on_HSlider_value_changed(value):
	MusicController.set_volume(value)

func _on_LvlBtn_pressed():
	get_tree().change_scene("res://Scenes/Levels.tscn")

func _on_PlayBtn_pressed():
	get_tree().change_scene("res://Scenes/main game.tscn")
	DynamicManager.Speed = 3
	DynamicManager.time = 310
	DynamicManager.oil = 1.8
	DynamicManager.oilTime = 450
	DynamicManager.porsche = 4
	DynamicManager.porscheTime = 500
	DynamicManager.person = 2.5
	DynamicManager.personTime = 1000
