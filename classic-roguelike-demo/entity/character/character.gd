extends Entity
class_name Character

func newly_spawn():
	try_execute("fulfill_hp",[])
	try_execute("fulfill_mp",[])
