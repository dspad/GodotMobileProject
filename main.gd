extends Control

var score : int = 0
@export var aim_score : int = 10
@export var time_left : int = 5

func _ready() -> void:
	$TimeLeftLabel.text = "Time left: 0" + str(time_left) + "s"
	$AimScoreLabel.text = "Aim score: " + str(aim_score)

func _on_increase_score_button_pressed() -> void:
	score += 1
	$ScoreLabel.text = "Score: " + str(score)
	Input.vibrate_handheld(125)
	if score == aim_score:
		get_tree().change_scene_to_file("res://Win.tscn")


func _on_time_left_timer_timeout() -> void:
	time_left -= 1
	$TimeLeftLabel.text = "Time left: 0" + str(time_left) + "s"
	if time_left == 0:
		get_tree().change_scene_to_file("res://Lose.tscn")
