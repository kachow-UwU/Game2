extends Label

var time = 0

func _process(delta):
	self.text = str(Global.score)
	time += delta * 3
	
	Global.score = ceil(time)
