extends Node

var music = load("res://Sprites/a-hero-of-the-80s-126684.wav")
var vol = 0

func _ready():
	pass

func play_music():
	$Music.stream = music
	$Music.play()
	
func set_volume(value):
	vol = value
	$Music.volume_db = vol
