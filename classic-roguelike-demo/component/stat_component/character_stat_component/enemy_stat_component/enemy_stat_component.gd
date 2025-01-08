extends CharacterStatComponent
class_name EnemyStatComponent

func get_exp_reward()->int:
	var base_stat = base_character_stat as EnemyStat
	return base_stat.exp_reward
