extends Node
## 游戏主场景类, 提供回合管理功能, 是游戏回合的计数器
class_name Main

@onready var game_statemachine: Statemachine = $GameStatemachine
@onready var world: Node2D = $World

# HACK
@onready var player: Player = $World/PlayerLayer/Player


static var TICK_PER_CYCLE : int = 30

var cycle_count : int = 1
var tick_count : = 1 :
	set(v):
		if v > TICK_PER_CYCLE:
			cycle_count += v / TICK_PER_CYCLE
			tick_count = v % TICK_PER_CYCLE

# 用于记录楼层变更的变量
var last_level : int = -1
var target_level : int = 0

func _ready() -> void:
	GlobalValue.main_scene = self
	game_statemachine.initialize.call_deferred()
	player.initialize.call_deferred()

func _process(delta: float) -> void:
	game_statemachine.update(delta)
