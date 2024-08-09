extends StaticBody2D

@export var A_key : bool
@export var B_key : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if A_key and not B_key:
		if Playerstates.A_key:
			queue_free()
	if B_key and not A_key:
		if Playerstates.B_key:
			queue_free()
	if A_key and B_key:
		if Playerstates.A_key and Playerstates.B_key:
			queue_free()
