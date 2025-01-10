extends Node
# Entity决策, 对GlobalValue.set_action_to_execute()
# 然后由ActionInterpreter进行execute_action

func set_action(action:Action):
	GlobalValue.set_action_to_execute(action)

func execute_action():
	var action = GlobalValue.get_action_to_execute()
	if action == null:
		return
	match action.type:
		Action.Type.MOVE:
			interprete_action_move(action)

func interprete_action_move(action:Action):
	action.executer.try_execute("move",action.args)
