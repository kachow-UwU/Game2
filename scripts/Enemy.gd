extends Area
class_name Enemy

var speed = 30
var position = [4, 0, -4]

func _ready():
	randomize()
	position.shuffle()
	translation.x = position.front()
	

func _process(delta):
	translate(Vector3(0, 0, speed) * delta)

