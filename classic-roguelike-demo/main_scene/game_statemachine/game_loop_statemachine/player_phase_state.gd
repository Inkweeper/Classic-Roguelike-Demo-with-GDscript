extends State

@onready var player_phase_statemachine: SubStatemachine = $PlayerPhaseStatemachine

func initialize():
	pass

func enter():
	# HACK
	print("PlayerPhase")
	player_phase_statemachine.initialize()
	pass

func exit():
	pass

func update(delta:float):
	pass
