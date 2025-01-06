extends Resource
## 用于保存每层信息的资源类型
class_name LevelSave

var tile_map_data : PackedByteArray
var facility_data : Array[PackedScene]
var collectable_data : Array[PackedScene]
var player_data : Array[PackedScene]
var projectile_data : Array[PackedScene]
var enemy_data : Array[PackedScene]
