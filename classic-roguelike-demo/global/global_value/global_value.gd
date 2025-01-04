extends Node

const tile_size : Vector2i = Vector2i(32,32)

var player : Player

### 本tick行动单位列表
#var action_entity_list : Array[Entity] = []

## 当前待执行action
var _action_to_execute : Action

## 效果堆栈
var _effect_stack : Array = []

func set_action_to_execute(action:Action):
	_action_to_execute = action

func get_action_to_execute()->Action:
	var action = _action_to_execute
	_action_to_execute = null
	return action
