extends Statemachine
class_name SubStatemachine

var parent_state : State

func initialize():
	parent_state = get_parent()
	super.initialize()
