extends State

func initialize():
	InstructionManager.instruction_given.connect(_on_instruction_given)
	pass

func enter():
	if GlobalValue.player.if_should_act():
		#print("go! ")
		InstructionManager.activated = true
	else:
		#print("not your tick! ")
		transitioned.emit(self,"ProjectilePhaseState")


func exit():
	pass

func update(delta:float):
	pass

func _on_instruction_given(action:Action):
	if state_machine.current_state != self:
		return
	GlobalValue.set_action_to_execute(action)
	transitioned.emit(self,"PlayerActionState")
