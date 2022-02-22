extends Node

var rng = RandomNumberGenerator.new()
var seed_number = randi() % 999999

func _ready():
	rng.seed = seed_number
	
func load_seed_number(number):
	rng.seed = number
	
