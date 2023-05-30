extends Node2D

onready var road = preload("res://Scenes/Road.tscn")
onready var truck = preload("res://Scenes/ene_car.tscn")
onready var coin = preload("res://Scenes/coin.tscn")
onready var porsche = preload("res://Scenes/porsche.tscn")
onready var person = preload("res://Scenes/person.tscn")
onready var oil = preload("res://Scenes/oil.tscn")

var timer_oil = 130
var timer = 0
var timer_truck = 100
var timer_coin = 10
var timer_porsche = 150
var timer_person = 300
var timerGame = 0
onready var scoreLabel = $Label
onready var Lives = $Label2
var hitCount = 3
onready var anim = $AnimationPlayer

func _ready():
	ScoreManager.reset_score()
	scoreLabel.text = "Score\n" + str(ScoreManager.get_score())
	Lives.text = "Lives: " + str(hitCount)
	
func _process(delta):
	timer -= 1
	timer_truck -= 1
	timer_coin -= 1
	timer_porsche -= 1
	timer_person -= 1
	timerGame +=0.5
	timer_oil -= 1
	
	if timer_coin < 0:
		var coin_ins = coin.instance()
		timer_coin = 170
		add_child(coin_ins)
	
	if timer_truck < 0:
		var truck_ins = truck.instance()
		timer_truck = DynamicManager.time
		add_child(truck_ins)

	if timer < 0:
		var road_ins = road.instance()
		timer = 250
		add_child(road_ins)
		
	if timerGame >= 3000:
		if timer_oil < 0:
			var oil_ins = oil.instance()
			timer_oil =  DynamicManager.oilTime
			add_child(oil_ins)
				
	if timerGame >= 5000:
		if timer_porsche < 0:
			var porsche_ins = porsche.instance()
			timer_porsche = DynamicManager.porscheTime
			add_child(porsche_ins)
			
	if timerGame >= 10000:
		if timer_person < 0:
			var person_ins = person.instance()
			timer_person = DynamicManager.personTime
			add_child(person_ins)

func _on_player_area_entered(area):
	if area.is_in_group("coin"):
		ScoreManager.set_score(ScoreManager.get_score() + 1)
		scoreLabel.text = "Score\n" + str(ScoreManager.get_score())
		area.queue_free() 
		
	elif area.is_in_group("truck"):
		hitCount -= 1
		Lives.text = "Lives: " + str(hitCount)
		anim.play("pain")
		area.queue_free() 
		if hitCount == 0:
			get_tree().change_scene("res://Scenes/Game_Over.tscn")
		

