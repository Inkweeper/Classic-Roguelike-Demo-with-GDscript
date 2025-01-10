extends State

func initialize():
	pass

func enter():
	# HACK
	transitioned.emit(self,"EnemyPhaseState")
	pass

func exit():
	pass

func update(delta:float):
	pass
