extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/3d_scene.tscn')


func _on_options_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/options.tscn')


func _on_exit_button_pressed() -> void:
	get_tree().quit()
