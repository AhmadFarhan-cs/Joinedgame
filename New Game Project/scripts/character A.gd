extends CharacterBody2D

@onready var sprite_2d = $Sprite2D

var candoublejump = true
const SPEED = 300.0
var JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not Playerstates.switched:
		JUMP_VELOCITY = -500
		sprite_2d.flip_v=false
		if not is_on_floor():
			velocity.y += gravity * delta

		# Handle jump.
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			candoublejump = true
		elif Input.is_action_just_pressed("jump")  and  candoublejump==true:
			velocity.y = JUMP_VELOCITY
			candoublejump = false

		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
		var direction = Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		sprite_2d.flip_v=true
		JUMP_VELOCITY = 500
		if not is_on_ceiling():
			velocity.y += -(gravity * delta)

	# Handle jump.
		if Input.is_action_just_pressed("jump") and is_on_ceiling():
			velocity.y = JUMP_VELOCITY
			candoublejump = true
		elif Input.is_action_just_pressed("jump")  and  candoublejump==true:
			velocity.y = JUMP_VELOCITY
			candoublejump = false

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
		var direction = Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)


	move_and_slide()
