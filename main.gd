extends Control

var score : int = 0

func _on_increase_score_button_pressed() -> void:
	score += 1
	$ScoreLabel.text = "Score: " + str(score)
	Input.vibrate_handheld(125)
