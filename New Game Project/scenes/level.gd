extends Node2D
@onready var r_world = $r_world
@onready var m_world = $m_world
@onready var character_a = $"character A"
@onready var character_b = $"Character B"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("switch"):
		var temp = character_a.global_position
		character_a.global_position=character_b.global_position
		character_b.global_position = temp
		switch()

func switch():
	if Playerstates.switched==false:
		Playerstates.switched= true
	else:
		Playerstates.switched= false
