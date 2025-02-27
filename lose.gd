extends Control


func _on_home_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu.tscn")


func _on_play_again_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Main.tscn")
