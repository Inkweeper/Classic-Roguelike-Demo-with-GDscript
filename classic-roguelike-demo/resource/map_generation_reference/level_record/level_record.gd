extends Resource
## 用于记录每层的基本信息
class_name LevelRecord

## 本层地图是否已经被加载或生成过(玩家是否已经进入过)
@export var has_loaded_or_generated : bool = false
## 本层地图是否是预制地图
@export var prefabricated : bool = false
## 本层地图的生成规则
@export var map_generation_rule : MapGenerationRule
## 本层地图地址
@export var level_map_path : String
