extends Node

func execute_action():
	var action = GlobalValue.get_action_to_execute()
	match action.type:
		Action.Type.MOVE:
			interprete_action_move(action)

func interprete_action_move(action:Action):
	action.executer.try_execute("move",action.args)
