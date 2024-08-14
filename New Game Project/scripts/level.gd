extends Node2D

@onready var character_a = $"character A"
@onready var character_b = $"Character B"
const WINSCREEN = preload("res://scenes/winscreen.tscn")
const switch_sound = preload("res://scenes/switch_sound.tscn")
var levelcomp=false

var random = RandomNumberGenerator.new()

var switches := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if Input.is_action_just_pressed("switch") and Playerstates.can_switch == true:
		var temp = character_a.global_position
		character_a.global_position=character_b.global_position
		character_b.global_position = temp
		switch()
	if Playerstates.A_at_end == true and Playerstates.B_at_end == true and levelcomp ==false:
		levelcomp = true
		var win_screen = WINSCREEN.instantiate()
		add_child(win_screen)
	if Input.is_action_just_pressed("restart"):
		Levelmanager.restartlevel()

func switch() -> void:
	switches += 1
	if Playerstates.switched==false:
		Playerstates.switched= true
	else:
		Playerstates.switched= false
	var streamPlayer = switch_sound.instantiate()
	add_child(streamPlayer)
	$SwitchSound.playing = true
