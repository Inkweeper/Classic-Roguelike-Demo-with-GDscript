extends State

func initialize():
	pass

func enter():
	ActionInterpreter.execute_action()
	# HACK
	#print("trying to execute action")
	transitioned.emit(self,"MaintainanceState")

func exit():
	pass

func update(delta:float):
	pass
