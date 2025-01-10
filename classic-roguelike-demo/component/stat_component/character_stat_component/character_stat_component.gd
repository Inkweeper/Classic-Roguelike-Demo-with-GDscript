extends Component
class_name CharacterStatComponent

@export var base_character_stat : CharacterStat
@export var base_attribute : BaseAttribute

var effective_stat : CharacterStat

var _hp : float
var _mp : float

const STRENGTH_EFFECT : Dictionary = {
	"atk":0.5,
}
const AGILITY_EFFECT : Dictionary = {
	"speed":0.05,
	"armor":0.2,
	"evasion":0.002,
}
const CONSTITUTION_EFFECT : Dictionary = {
	"max_hp":1.0,
	"block":0.1,
}
const DEXTERITY_EFFECT : Dictionary = {
	"crit":0.002,
	"precision":0.0005,
	"speed":0.05,
}
const INTELLIGENCE_EFFECT : Dictionary = {
	"max_mp":1.0
}

func initialize():
	calculate_effective_stat()
	pass

# /unique

func calculate_effective_stat():
	effective_stat = base_character_stat.duplicate()
	for key in STRENGTH_EFFECT.keys():
		effective_stat.set(
			key,
			effective_stat.get(key) + base_attribute.strength * STRENGTH_EFFECT[key]
		)
	for key in AGILITY_EFFECT.keys():
		effective_stat.set(
			key,
			effective_stat.get(key) + base_attribute.agility * AGILITY_EFFECT[key]
		)
	for key in CONSTITUTION_EFFECT.keys():
		effective_stat.set(
			key,
			effective_stat.get(key) + base_attribute.constitution * CONSTITUTION_EFFECT[key]
		)
	for key in DEXTERITY_EFFECT.keys():
		effective_stat.set(
			key,
			effective_stat.get(key) + base_attribute.dexterity * DEXTERITY_EFFECT[key]
		)
	for key in INTELLIGENCE_EFFECT.keys():
		effective_stat.set(
			key,
			effective_stat.get(key) + base_attribute.intelligence * INTELLIGENCE_EFFECT[key]
		)

func set_hp(v:float):
	if v >= effective_stat.max_hp:
		_hp = effective_stat.max_hp
	elif v <= 0:
		_hp = 0
		
		# HACK: 这里的逻辑应当由take_damage()执行, 因为它知道谁造成了伤害, 可以分配经验
		if owner is Enemy:
			# HACK: 敌人应当有特殊的死亡方法, 用来处理经验分配和物品掉落
			owner.queue_free()
		elif owner is Player:
			print("player hp = 0!")

func get_hp()->float:
	return _hp

func fulfill_hp():
	set_hp(effective_stat.max_hp)

func set_mp(v:float):
	if v >= effective_stat.max_mp:
		_mp = effective_stat.max_mp
	elif v <= 0:
		_mp = 0

func get_mp()->float:
	return _mp

func fulfill_mp():
	set_mp(effective_stat.max_mp)

# /

# /universal

func wait_a_tick():
	effective_stat.tick_to_wait -= 1

func reset_tick_to_wait():
	effective_stat.tick_to_wait = int(Main.TICK_PER_CYCLE / effective_stat.speed)

func if_should_act()->bool:
	if effective_stat.tick_to_wait <= 0:
		reset_tick_to_wait()
		return true
	else:
		wait_a_tick()
		return false

# /
