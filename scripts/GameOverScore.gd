extends Label

func _process(delta):
	self.text = "Your Score %s" % str(Global.score)
