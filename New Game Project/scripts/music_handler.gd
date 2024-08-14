extends Node2D

@onready var timer = $Timer
@onready var audio_stream_player = $AudioStreamPlayer
var random = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	await get_tree().create_timer(2).timeout
	if not audio_stream_player.playing:
		var random_number = random.randi_range(0,100)
		if random_number > 75:
			audio_stream_player.play()
			print("Started Song")
