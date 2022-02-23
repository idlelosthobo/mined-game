extends Control

onready var volume_master_slider = get_node("HBoxContainer/VBoxContainer/MarginContainer/VBoxContainer/VolumeMasterSlider")
onready var volume_music_slider = get_node("HBoxContainer/VBoxContainer/MarginContainer/VBoxContainer/VolumeMusicSlider")
onready var volume_sfx_slider = get_node("HBoxContainer/VBoxContainer/MarginContainer/VBoxContainer/VolumeSFXSlider")

func _ready():
	volume_master_slider.value = SettingsManager.volume_master
	volume_music_slider.value = SettingsManager.volume_music
	volume_sfx_slider.value = SettingsManager.volume_sfx
	
	
func _on_VolumeMasterSlider_value_changed(value):
	SettingsManager.volume_master = value
	SettingsManager.save_settings()


func _on_VolumeMusicSlider_value_changed(value):
	SettingsManager.volume_music = value
	SettingsManager.save_settings()


func _on_VolumeSFXSlider_value_changed(value):
	SettingsManager.volume_sfx = value
	SettingsManager.save_settings()


func _on_ExitGameButton_button_up():
	get_tree().quit()
