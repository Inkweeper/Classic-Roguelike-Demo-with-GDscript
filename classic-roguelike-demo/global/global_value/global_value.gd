extends Node

const tile_size : Vector2i = Vector2i(32,32)

var player : Player

## 本tick行动单位列表
var action_entity_list : Array[Entity] = []

## 当前待执行action
var action_to_execute : Action

## 效果堆栈
var effect_stack : Array = []
