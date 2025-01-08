extends Resource
## 角色和投射物都需要用到的数值的类
class_name EntityStat

@export_group("text")
@export var name : String
@export_multiline var flavored_text : String

@export_group("speed")
@export var speed : float
@export var tick_to_wait :int

@export_group("atk stuff")
@export var atk : float
@export var crit : float
@export var precision : float

@export_group("def stuff")
@export var block : float
@export var armor : float
@export var evasion : float

@export_group("","")
