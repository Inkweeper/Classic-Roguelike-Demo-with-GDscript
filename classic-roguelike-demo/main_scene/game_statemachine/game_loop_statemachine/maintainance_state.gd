extends State

func initialize():
	pass

func enter():
	# HACK
	#print("maintaining")
	transitioned.emit(self,"TickStartingState")
	
	pass

func exit():
	pass

func update(delta:float):
	pass
