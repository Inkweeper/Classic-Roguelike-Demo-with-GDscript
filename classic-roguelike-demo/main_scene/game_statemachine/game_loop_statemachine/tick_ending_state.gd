extends State
# TickEndingState

func initialize():
	pass

func enter():
	EventBus.game_tick_end.emit()
	transitioned.emit(self,"MaintainanceState")

func exit():
	pass

func update(delta:float):
	pass
