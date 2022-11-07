mobs:register_mob("animalworld:hermitcrab", {
	stepheight = 3,
	type = "animal",
	passive = true,
	attack_type = "dogfight",
	group_attack = true,
	owner_loyal = true,
	attack_npcs = false,
	reach = 2,
	damage = 0,
	hp_min = 60,
	hp_max = 120,
	armor = 100,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.3, 0.2},
	visual = "mesh",
	mesh = "Hermitcrab.b3d",
	textures = {
		{"texturehermitcrab.png"},
		{"texturehermitcrab2.png"},
		{"texturehermitcrab3.png"},
		{"texturehermitcrab4.png"},
	},
	makes_footstep_sound = true,
	sounds = {
random = "animalworld_crab",
		attack = "animalworld_crab",
		random = "animalworld_crab",
	},
	walk_velocity = 0.4,
	run_velocity = 0.6,
	runaway = true,

	jump = false,
	jump_height = 3,
	floats = 0,
	pushable = true,
	follow = {"default:apple", "default:dry_dirt_with_dry_grass", "farming:seed_wheat", "default:junglegrass", "farming:seed_oat", "default:kelp", "seaweed", "xocean:kelp",
		"default:grass", "farming:cucumber", "farming:cabbage", "xocean:seagrass", "farming:lettuce", "default:junglegrass", "animalworld:rawfish", "mobs_fish:tropical", "mobs:clownfish_raw", 
"mobs:bluefish_raw", "fishing:bait_worm", "fishing:clownfish_raw", "fishing:bluewhite_raw", "fishing:exoticfish_raw", "fishing:fish_raw", "fishing:carp_raw", "fishing:perch_raw", "water_life:meat_raw", "fishing:shark_raw", "fishing:pike_raw", "naturalbiomes:coconut", "naturalbiomes:banana"},
	view_range = 5,
	drops = {
		{name = "animalworld:raw_athropod", chance = 1, min = 0, max = 1},
	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 3,
	animation = {
		speed_normal = 50,
		stand_start = 0,
		stand_end = 100,
		stand1_start = 100,
		stand1_end = 200,
		stand2_start = 300,
		stand2_end = 400,
		walk_start = 200,
		walk_end = 300,


		die_start = 1, -- we dont have a specific death animation so we will
		die_end = 2, --   re-use 2 standing frames at a speed of 1 fps and
		die_speed = 1, -- have mob rotate when dying.
		die_loop = false,
		die_rotate = true,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 30, 50, 80, false, nil) then return end
	end,
})


if not mobs.custom_spawn_animalworld then
mobs:spawn({
	name = "animalworld:hermitcrab",
	nodes = {"naturalbiomes:palmbeach_sand"},
	min_light = 0,
	interval = 30,
	chance = 1, -- 15000
	active_object_count = 4,
	min_height = 2,
	max_height = 6,
})
end

mobs:register_egg("animalworld:hermitcrab", ("Hermit Crab"), "ahermitcrab.png")


mobs:alias_mob("animalworld:hermitcrab", "animalworld:hermitcrab") -- compatibility

