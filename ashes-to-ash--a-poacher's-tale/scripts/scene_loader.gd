extends Node

func close_scene() -> void:
	get_tree().quit()

func change_scene(path : String) -> void:
	get_tree().change_scene_to_file(path)
