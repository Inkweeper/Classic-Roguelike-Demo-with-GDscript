extends Node
## 游戏主场景类, 提供游戏回合计数, 存档加载和保存
class_name Main

@onready var game_statemachine: Statemachine = $GameStatemachine
@onready var world: World = $World

var player : Player

# HACK
#@onready var player: Player = $World/PlayerLayer/Player

# 用于参考和储存每层关卡生成状态和类型的列表
var map_generation_reference : MapGenerationReference

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
	EventBus.game_tick_start.connect(_on_game_tick_start)
	EventBus.game_tick_end.connect(_on_game_tick_end)
	game_statemachine.initialize.call_deferred()
	# HACK
	#player.initialize.call_deferred()

func _process(delta: float) -> void:
	game_statemachine.update(delta)

func _on_game_tick_start():
	tick_count += 1

func _on_game_tick_end():
	pass

## HACK 创建新游戏. 
# TODO 其中的生成新存档等res的行为应当交由标题画面场景执行,
# 游戏主场景直接取用temp中的res比较好
func new_game():
	# 复制一份地图生成参考表
	map_generation_reference = load("res://resource/map_generation_reference/map_generation_reference.tres")
	# 生成第一层地图
	var mg_rule : MapGenerationRule = map_generation_reference.level_list[0].map_generation_rule
	#mg_rule.world = GlobalValue.main_scene.world
	#mg_rule.level_count = 0
	mg_rule.initialize(0, world)
	mg_rule.generate_map()
	# 放置玩家
	var player_scene : PackedScene = load("res://entity/character/player/player.tscn")
	player = player_scene.instantiate()
	for facility in world.facility_layer.get_children():
		if facility is UpStair:
			player.position = facility.position
			world.player_layer.add_child(player)
			break
	
	player.initialize()
	player.newly_spawn()
	
	# 生成敌人
	mg_rule.spawn_enemy()



# HACK
#func _input(event: InputEvent) -> void:
	#if event.is_action("f1"):
		#var node :PlayerStatComponent =GlobalValue.player.get_node("PlayerStatComponent")
		#print(node.effective_stat.max_hp)
		#print(node.effective_stat.max_mp)
		#print(node.effective_stat.speed)
		#print(node.effective_stat.atk)
