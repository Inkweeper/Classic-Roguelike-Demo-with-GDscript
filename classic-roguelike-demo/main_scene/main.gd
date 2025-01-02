extends Node
## 游戏主场景类, 提供回合管理功能, 是游戏回合的计数器
class_name Main

@onready var game_statemachine: Statemachine = $GameStatemachine

static var TICK_PER_CYCLE : int = 30

var cycle_count : int = 1
var tick_count : = 1 :
	set(v):
		if v > TICK_PER_CYCLE:
			cycle_count += v / TICK_PER_CYCLE
			tick_count = v % TICK_PER_CYCLE

## 目标前往的楼层
var target_level 

func _ready() -> void:
	game_statemachine.initialize.call_deferred()

func _process(delta: float) -> void:
	game_statemachine.update(delta)
