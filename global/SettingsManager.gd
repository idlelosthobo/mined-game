extends Node


var settings_file_location = 'user://settings.save'

var volume_master := 100
var volume_music := 100
var volume_sfx := 100


func save_settings():
	var settings_values = {
		'volume_master': self.volume_master,
		'volume_music': self.volume_music,
		'volume_sfx': self.volume_sfx,
	}

	var settings_file = File.new()

	settings_file.open(self.settings_file_location, File.WRITE)
	settings_file.store_line(to_json(settings_values))
	settings_file.close()

	
func load_settings():
	var settings_file = File.new()

	if not settings_file.file_exists(self.settings_file_location):
		save_settings()
		
	settings_file.open(self.settings_file_location, File.READ)
	while settings_file.get_position() < settings_file.get_len():
		var settings_dict = parse_json(settings_file.get_line())	
		
		for setting in settings_dict:
			self.set(setting, settings_dict[setting])
		
	settings_file.close()
			
func _ready():
	load_settings()

