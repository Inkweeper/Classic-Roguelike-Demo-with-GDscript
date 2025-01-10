extends Node

const tile_size : Vector2i = Vector2i(32,32)

var main_scene : Main
var player : Player

## 地图用枚举
enum PhysicsLayer {
	BLOCK_MOVEMENT = 1<<0,
	PROJECTILE = 1<<1,
	COLLECTABLE = 1<<2,
	FACILITY = 1<<3,
	# 1,2,4,8,16
}
enum TerrainSet {
	DEFAULT,
	FOG,
	AIMING,
}
enum LevelTerrian {
	FLOOR,
	WALL,
}

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
