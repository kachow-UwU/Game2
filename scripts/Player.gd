extends RigidBody

class_name Player

func _process(delta):
	if Input.is_action_just_pressed("move_left") && !translation.x <= -4:
		translate(Vector3(-4, 0, 0))
	if Input.is_action_just_pressed("move_right") && !translation.x >= 3.9:
		translate(Vector3(4, 0, 0))


func _on_HitBox_area_entered(area):
	if area.is_in_group("enemy"):
		get_tree().change_scene("res://scenes/GameOverScreen.tscn")
