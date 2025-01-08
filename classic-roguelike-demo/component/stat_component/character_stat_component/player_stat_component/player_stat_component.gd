extends CharacterStatComponent
class_name PlayerStatComponent

func gain_exp(v:int):
	if base_character_stat is not PlayerStat or effective_stat is not PlayerStat:
		push_error("PlayerStatComponent not processing right stat class")
		return
	else:
		var base_stat = base_character_stat as PlayerStat
		base_stat.exp += v
		while(base_stat.exp >= base_stat.exp_thres):
			base_stat.level += 1
			base_stat.exp_thres = ceili(1.5 * base_stat.exp_thres)
			base_stat.unallocated_attribute += base_stat.base_attribute_gain_per_level
			EventBus.player_level_up.emit()
