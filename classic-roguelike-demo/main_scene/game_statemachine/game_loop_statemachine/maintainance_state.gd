extends State

func initialize():
	pass

func enter():
	# HACK
	print("maintaining")
	var lambda = func():
		transitioned.emit(self,"TickStartingState")
	lambda.call_deferred()
	
	pass

func exit():
	pass

func update(delta:float):
	pass
