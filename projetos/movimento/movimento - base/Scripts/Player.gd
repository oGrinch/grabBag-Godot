extends CharacterBody2D

const MAX_SPEED = 500.0
const FRICTION = 10000.0

func _physics_process(delta: float) -> void:
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input.length() > 0:
		velocity = input * MAX_SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	move_and_slide()
