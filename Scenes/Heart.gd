extends Area2D

var const_gravity = 40

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

	var random_float = rng.randf()
	
	if random_float > 0.75:
		scale.x = -1
	elif random_float > 0.5:
		scale.y = -1
	elif random_float > 0.25:
		scale.x = -1
		scale.y = -1

func _process(delta):
	position.y += const_gravity * delta

	if position.y > 120 + 26:
		destroy()

func destroy():
	get_tree().queue_delete(self)

func _on_Heart_body_entered(body):
	if body.is_in_group("Rocket"):
		destroy()
