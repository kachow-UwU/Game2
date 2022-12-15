extends Label

onready var game_data = SaveFile.game_data

func _process(delta):
	if int(Global.score) > int(game_data.best_score):
		game_data.best_score = Global.score
		self.text = "Your Best Score: %s" % [game_data.best_score]
		SaveFile.save_data()
	
func _ready():
	self.text = "Your Best Score: %s" % [game_data.best_score]


	


