extends State
class_name ActivatingEffectState

func initialize():
	InstructionManager.instruction_given.connect(_on_instruction_given)
	pass

func enter():
	InstructionManager.activated = true
	pass

func exit():
	pass

func update(delta:float):
	pass

func _on_instruction_given(action:Action):
	if state_machine.current_state != self:
		return
	GlobalValue.set_action_to_execute(action)
	transitioned.emit(self,"PlayerActionState")
