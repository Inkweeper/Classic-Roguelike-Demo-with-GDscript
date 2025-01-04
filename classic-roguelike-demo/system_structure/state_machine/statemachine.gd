extends Node
class_name Statemachine

@export var start_state : State
var current_state : State

var states: Dictionary = {}

var can_update : bool = true

## 将所有state录入stateMachine. 只有父级调用了initialize(), 状态机才会启动
func initialize():
	for child in get_children():
		if child is State:
			child.state_machine = self
			states[child.name] = child
			child.transitioned.connect(_on_child_transitioned)
			child.initialize()
	current_state = start_state
	current_state.enter()

func update(delta:float):
	if not can_update:
		return
	if current_state:
		current_state.update(delta)


## 该函数用于在改变state时触发前一个state的exit()以及后一个state的enter()
func _on_child_transitioned(state:State,newStateName:String):
	if state != current_state: 
		return
	var newState :State = states.get(newStateName)
	if !newState: 
		return
	
	if current_state:
		current_state.exit()
		
	can_update = false
	current_state = newState
	newState.enter()
	can_update = true
	
	
