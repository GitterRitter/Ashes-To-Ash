extends Node

@export var audio_button : Button
@export var video_button : Button
@export var controls_button : Button

func _ready():
	audio_button.pressed.connect(on_audio_button_pressed)
	video_button.pressed.connect(on_new_game_button_pressed)
	controls_button.pressed.connect(on_settings_button_pressed)


func on_audio_button_pressed():
	SceneLoader.change_scene("res://scenes/settings/audio.tscn")

func on_new_game_button_pressed():
	SceneLoader.change_scene("res://scenes/settings/video.tscn")

func on_settings_button_pressed():
	SceneLoader.change_scene("res://scenes/settings/controls.tscn")
