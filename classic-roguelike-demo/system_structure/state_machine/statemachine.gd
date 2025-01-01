extends Node
class_name Statemachine

@export var startState : State
var currentState : State

var states: Dictionary = {}

var can_update : bool = true

## 将所有state录入stateMachine. 只有父级调用了initialize(), 状态机才会启动
func initialize():
	for child in get_children():
		if child is State:
			child.stateMachine = self
			states[child.name] = child
			child.transitioned.connect(_on_child_transitioned)
			child.initialize()
	currentState = startState
	currentState.enter()

func update(delta:float):
	if not can_update:
		return
	if currentState:
		currentState.update(delta)


## 该函数用于在改变state时触发前一个state的exit()以及后一个state的enter()
func _on_child_transitioned(state:State,newStateName:String):
	if state != currentState: 
		return
	var newState :State = states.get(newStateName)
	if !newState: 
		return
	
	if currentState:
		currentState.exit()
		
	can_update = false
	currentState = newState
	newState.enter()
	can_update = true
	
	
