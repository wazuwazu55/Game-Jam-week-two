extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition.show()
	$transition/game_in.start()
	$transition/AnimationPlayer.play("fade_out")

func _on_game_in_timeout() -> void:
	$transition.hide()

func _on_game_exit_timeout() -> void:
	pass # Replace with function body.
