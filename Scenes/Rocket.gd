extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	var thrust = 0
	if Input.is_key_pressed(KEY_W):
		thrust = 100
	if Input.is_key_pressed(KEY_A):
		rotation -= 5 * delta
	if Input.is_key_pressed(KEY_D):
		rotation += 5 * delta

	velocity.x = thrust * cos(rotation)
	velocity.y = thrust * sin(rotation)
  
	var _returned_velocity = move_and_slide(velocity, Vector2(0, 0), false, 4, 0, false)
