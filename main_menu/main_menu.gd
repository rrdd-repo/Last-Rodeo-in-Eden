class_name MainMenu
extends Control

@onready var options: Control = $Options
@onready var credits: Control = $Credits

func _on_credits_pressed() -> void:
	options.visible = false
	credits.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://vn/main.tscn")


func _on_button_pressed() -> void:
	options.visible = true
	credits.visible = false
