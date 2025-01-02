extends Entity
class_name Player

func initialize():
	GlobalValue.player = self
	super.initialize()
