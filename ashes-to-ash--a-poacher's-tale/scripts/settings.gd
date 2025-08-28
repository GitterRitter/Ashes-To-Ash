extends Node

# Sound Settings
@export var master_slide : HSlider
@export var sfx_slide : HSlider
@export var music_slide : HSlider

# Visual Settings
@export var screen_mode_menu : OptionButton
@export var resolution_menu : OptionButton
@export var vertical_sync_button : CheckButton
@export var max_fps_line_edit : LineEdit

# Control Settings


var master_volume : int
var sfx_volume : int
var music_volume : int

var screen_mode : String
var resolution : String
var vertical_sync_on : bool
var max_fps : int

var keybinds : Dictionary


func _ready():
	pass

func create_default_config() -> Dictionary:
	var keybinds = {
		"up": "w",
		"down" : "s",
		"left" : "a",
		"right" : "d",
		"jump" : "space"
	};
	var config = {
		"master_volume" : 1,
		"sfx_volume" : 1,
		"music_volume" : 1,
		"screen_mode" : "Fullscreen",
		"resolution" : "1920x1080",
		"vertical_sync_on" : false,
		"max_fps" : 60,
		"keybinds" : keybinds
	}
	return config;

func load_config(config : Dictionary):
	master_volume = config["master_volume"];
	sfx_volume = config["sfx_volume"];
	music_volume = config["music_volume"];
	screen_mode = config["master_volume"];
	resolution = config["resolution"];
	vertical_sync_on = config["vertical_sync_on"];
	max_fps = config["max_fps"];
	keybinds = config["keybinds"];

func get_config_from_path(path : String) -> Dictionary:
	var config_string = String.get_file(path);
	var config = {};
	return config;
	
