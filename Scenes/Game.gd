extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	
func _on_HeartSpawnTimer_timeout():
	var heart = load("res://Scenes/Heart.tscn").instance()
	add_child(heart)

	var rand_x = rng.randi_range(-160 + 26, 160 - 26)
	var rand_y = rng.randi_range(-140 - 26, -120 - 26)
	heart.position = Vector2(rand_x, rand_y)
