extends State

func initialize():
	pass

func enter():
	# FIXME
	print("tickstarting")
	transitioned.emit(self,"PlayerPhaseState")
	pass

func exit():
	pass

func update(delta:float):
	pass
