extends Node

var level_id= 1

var level =preload("res://scenes/Levels/testlevel.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func restartlevel():
	get_tree().change_scene_to_packed(level)
	Playerstates.reset()
	
	
func nextlevel():
	match level_id:
		1:
			level =preload("res://scenes/Levels/level_2.tscn")
			level_id =2
			get_tree().change_scene_to_packed(level)
		2:
			level = preload("res://scenes/Levels/level_3.tscn")
			level_id = 3
			get_tree().change_scene_to_packed(level)
		3:
			level = preload("res://scenes/Levels/level_4.tscn")
			level_id = 4
			get_tree().change_scene_to_packed(level)
		4:
			level= preload("res://scenes/Levels/level_5.tscn")
			level_id= 5
			get_tree().change_scene_to_packed(level)
		5:
			level= preload("res://scenes/Levels/level_6.tscn")
			level_id= 6
			get_tree().change_scene_to_packed(level)
		6:
			level= preload("res://scenes/Levels/level_7.tscn")
			level_id= 7
			get_tree().change_scene_to_packed(level)
		7:
			level =preload("res://scenes/Levels/level_8.tscn")
			level_id = 8
			get_tree().change_scene_to_packed(level)
		9:
			level =preload("res://scenes/Levels/level_9.tscn")
			level_id =9 
			get_tree().change_scene_to_packed(level)
	Playerstates.reset()
