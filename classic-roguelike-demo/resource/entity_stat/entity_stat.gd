extends Resource
## 用于存放实体(角色和投掷物)属性的对象类
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

@export_group("hp mp")
@export var max_hp : float
@export var max_mp : float

@export_group("","")
