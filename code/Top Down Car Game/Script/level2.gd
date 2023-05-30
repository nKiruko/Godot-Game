extends Node2D

onready var road = preload("res://Scenes/Road.tscn")
onready var truck = preload("res://Scenes/ene_car.tscn")
onready var oil = preload("res://Scenes/oil.tscn")
onready var anim = $AnimationPlayer
var timer = 0
var timer_truck = 50
var timerGame = 0
var timer_oil = 100
var hitCount = 3
onready var Lives = $Label

func _ready():
	Lives.text = "Lives: " + str(hitCount)

func _process(delta):
	timerGame += 1
	$TextureProgress.value += 1
	timer -= 1
	timer_truck -= 1
	timer_oil -= 1

	
	if timer_truck < 0:
		var truck_ins = truck.instance()
		timer_truck = DynamicManager.time
		add_child(truck_ins)

	if timer < 0:
		var road_ins = road.instance()
		timer = 250
		add_child(road_ins)
		
	if timer_oil < 0:
		var oil_ins = oil.instance()
		timer_oil =  DynamicManager.oilTime
		add_child(oil_ins)
			
	if timerGame == 3000:
		get_tree().change_scene("res://Scenes/Complete2.tscn")

func _on_player_area_entered(area):
	if area.is_in_group("truck"):
		hitCount -= 1
		Lives.text = "Lives: " + str(hitCount)
		anim.play("pain")
		area.queue_free() 
		if hitCount == 0:
			get_tree().change_scene("res://Scenes/Game_Over2.tscn")

		
		
