extends Node2D


onready var scoreLabel = $Label2

func _ready():
	scoreLabel.text = "Score\n" + str(ScoreManager.get_score())
	$Button.grab_focus()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/main game.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/Main_Menu.tscn")
