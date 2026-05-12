class_name ItemConfig


enum Keys {
	Log,
	Coal,
	Mushroom,
	Flintstone,
	Fruit,
	RawMeat,
	CookedMeat,
	Stick,
	Stone,
	Plant,
	
	Axe,
	Pickaxe,
	Campfire,
	Multitool,
	Rope,
	Tinderbox,
	Torch,
	Tent,
	Raft
}

const CRAFTABLE_ITEM_KEYS:Array[Keys] = [
	Keys.Axe,
	#Keys.Pickaxe,
	#Keys.Campfire,
	#Keys.Multitool,
	Keys.Rope,
	#Keys.Tinderbox,
	#Keys.Torch,
	#Keys.Tent,
	#Keys.Raft
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://resources/item_resources/stick_resource.tres",
	Keys.Stone : "res://resources/item_resources/stone_resource.tres",
	Keys.Plant : "res://resources/item_resources/plant_resource.tres"
}

static  func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))
