extends Node


var bulletins := {}

func _enter_tree() -> void:
	EventSystem.BUL_create_bulletin.connect(create_bulletin)
	EventSystem.BUL_destroy_bulletin.connect(destroy_bulletin)

func create_bulletin(key : BulletinConfig.Keys,extra_args) -> void:
	if  bulletins.has(key):
		return
	var new_bulletins := BulletinConfig.get_bulletin(key)
	new_bulletins.initialize(extra_args)
	add_child(new_bulletins)
	bulletins[key] = new_bulletins
	
func destroy_bulletin(key : BulletinConfig.Keys) -> void:
	if not bulletins.has(key):
		return
	
	bulletins[key].queue_free()
	bulletins.erase(key)
	
