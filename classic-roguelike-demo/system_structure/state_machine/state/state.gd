extends Node
class_name State

## (self, newStateName:String)
signal transitioned(state_self:State,newStateName:String)

var state_machine: Statemachine

func initialize():
	pass

func enter():
	pass

func exit():
	pass

func update(delta:float):
	pass
