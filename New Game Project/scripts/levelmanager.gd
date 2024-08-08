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
	Playerstates.reset()
