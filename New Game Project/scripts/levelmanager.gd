extends Node

var level_id= 1

var level = preload("res://scenes/Levels/level_1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func restartlevel():
	get_tree().change_scene_to_packed(level)
	Playerstates.reset()
	
	
func nextlevel(winscreen):
	match level_id:
		1:
			level =preload("res://scenes/Levels/level_2.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id = 2
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		2:
			level = preload("res://scenes/Levels/level_3.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id = 3
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		3:
			level = preload("res://scenes/Levels/level_4.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id = 4
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		4:
			level= preload("res://scenes/Levels/level_5.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id= 5
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		5:
			level= preload("res://scenes/Levels/level_6.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id= 6
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		6:
			level= preload("res://scenes/Levels/level_7.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id= 7
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		7:
			level =preload("res://scenes/Levels/level_8.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id = 8
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
		8:
			level =preload("res://scenes/Levels/level_9.tscn")
			var level_scene = level.instantiate()
			var previous_level = winscreen.get_parent()
			level_id =9 
			previous_level.get_parent().add_child(level_scene)
			previous_level.queue_free()
	Playerstates.reset()
