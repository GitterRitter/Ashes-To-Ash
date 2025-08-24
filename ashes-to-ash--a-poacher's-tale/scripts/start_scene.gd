extends Node

@export var continue_button : Button
@export var new_game_button : Button
@export var settings_button : Button
@export var credits_button : Button
@export var exit_button : Button

func _ready():
	continue_button.pressed.connect(on_continue_button_pressed)
	new_game_button.pressed.connect(on_new_game_button_pressed)
	settings_button.pressed.connect(on_settings_button_pressed)
	credits_button.pressed.connect(on_credits_button_pressed)
	exit_button.pressed.connect(on_exit_button_pressed)

func on_continue_button_pressed():
	pass

func on_new_game_button_pressed():
	SceneLoader.change_scene("res://scenes/new_game.tscn")

func on_settings_button_pressed():
	SceneLoader.change_scene("res://scenes/settings/settings.tscn")

func on_credits_button_pressed():
	SceneLoader.change_scene("res://scenes/credits.tscn")

func on_exit_button_pressed():
	get_tree().quit()
