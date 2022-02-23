extends Node

onready var random_number = randi() % 15
onready var random_number2 = randi() % 15

func _ready():
	print(self.random_number)
	print(self.random_number2)
