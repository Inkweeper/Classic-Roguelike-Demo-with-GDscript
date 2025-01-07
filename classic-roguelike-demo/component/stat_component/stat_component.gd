extends Component
class_name StatComponent

@export var base_entity_stat : EntityStat
@export var base_attribute : BaseAttribute

var effective_stat : EntityStat

const STRENGTH_EFFECT : Dictionary = {
	"atk":0.5,
}
const AGILITY_EFFECT : Dictionary = {
	"speed":0.05,
	"armor":0.2,
	"evasion":0.001,
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
	pass

func calculate_effective_stat():
	
	
	pass
