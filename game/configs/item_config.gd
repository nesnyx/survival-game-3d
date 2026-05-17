class_name ItemConfig

enum Keys {
	Stick,
	Stone,
	Plant,
	Axe,
	Rope,
}

const CRAFTABLE_ITEM_KEYS:Array[Keys] = [
	Keys.Axe,
	Keys.Rope,
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://resources/item_resources/stick_resource.tres",
	Keys.Stone : "res://resources/item_resources/stone_resource.tres",
	Keys.Plant : "res://resources/item_resources/plant_resource.tres",
	Keys.Axe : "res://resources/item_resources/axe_resource.tres",
	Keys.Rope :"res://resources/item_resources/rope_resource.tres"
}

static func get_item_resource(key : Keys) -> ItemResource:
	# Gunakan .get() agar tidak crash meskipun key tidak ditemukan
	var path = ITEM_RESOURCE_PATHS.get(key)
	print("Mencoba memuat Key Indeks: ", key, " | Path Hasil: ", path)
	if path == null:
		push_error("Error: Key dengan indeks ", key, " tidak ada di ITEM_RESOURCE_PATHS!")
		return null
		
	return load(path)


const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe :"res://resources/crafting_blueprint_resources/axe_blueprint.tres",
	Keys.Rope : "res://resources/crafting_blueprint_resources/rope_blueprint.tres"
}

static  func get_crafting_blueprint_resource(key : Keys) -> ItemResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(key))
