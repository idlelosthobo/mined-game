extends CanvasLayer

func _ready():
	pass
#	var options_menu = load("res://menus/OptionsMenu.tscn")
#	add_child(options_menu.instance())

func _on_Campaign_pressed():
	get_tree().change_scene("res://game/Game.tscn")

func _on_Tutorial_pressed():
	pass # Replace with function body.

func _on_Sandbox_pressed():
	get_tree().change_scene("res://game/Game.tscn")

func _on_Options_pressed():
	pass
#	$OptionsMenu.open()

func _on_Credits_pressed():
	get_tree().change_scene("res://credits/Credits.tscn")

func _on_Exit_pressed():
	get_tree().quit()







