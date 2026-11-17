extends Control

var button_type = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition.show()
	$transition/load_in.start()
	$transition/AnimationPlayer.play("fade_out")

func _on_start_pressed() -> void:
	$transition.show()
	$transition/load_exit.start()
	$transition/AnimationPlayer.play("fade_in")
	button_type = "start"

func _on_quit_pressed() -> void:
	get_tree().quit()
	
func _on_load_in_timeout() -> void:
	$transition.hide()
func _on_load_exit_timeout() -> void:
	if button_type == "start":
		get_tree().change_scene_to_file("res://Scenes/Main_Game.tscn")
		button_type = null
