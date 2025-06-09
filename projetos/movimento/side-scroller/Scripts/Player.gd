extends CharacterBody2D

const MAX_SPEED = 500.0
const FRICTION = 10000.0
const JUMP_VELOCITY = -800.0
const GRAVITY = 2000.0

func _physics_process(delta: float) -> void:
	var dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = dir * MAX_SPEED if dir else move_toward(velocity.x, 0, FRICTION * delta)
	velocity.y += GRAVITY * delta
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	move_and_slide()
