extends State
## TickStartingState
# 遍历所有实体
# 检查所有实体的buff, 登记所有tick开始时发动的效果到GlobalValue

func initialize():
	pass

func enter():
	# HACK
	#print("tickstarting")
	transitioned.emit(self,"WaitingForInstructionState")
	pass

func exit():
	pass

func update(delta:float):
	pass
