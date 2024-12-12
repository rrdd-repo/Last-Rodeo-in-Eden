class_name Main
extends Node2D

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.start("prologue")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func _on_dialogic_signal(argument:String):
	if argument == "open_credits":
		get_tree().change_scene_to_file("res://main_menu/credits/end_credits.tscn")
