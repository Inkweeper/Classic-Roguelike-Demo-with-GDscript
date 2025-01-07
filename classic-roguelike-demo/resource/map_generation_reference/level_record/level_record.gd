extends Resource
## 用于记录每层的基本信息
class_name LevelRecord

## 本层地图是否已经被加载或生成过(玩家是否已经进入过)
@export var has_loaded_or_generated : bool = false
## 本层地图是否是预制地图
@export var prefabricated : bool = false
## 本层地图的生成规则
@export var map_generation_rule : MapGenerationRule
## 本层可生成的敌人列表, 供生成敌人时的参考. 场景路径->权值
@export var enemy_spawn_list : Dictionary
## 本层首次可生成的敌人最大cost, 权值和大于此值时停止生成
@export var max_enemy_spawn_cost : int
## 本层已生成的存档地址
@export var level_save_path : String
