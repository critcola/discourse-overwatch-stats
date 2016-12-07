# name: discourse-overwatch-stats
# about: Bring Overwatch stats from your Discourse Users
# version: 0.0.1
# authors: Rafael dos Santos Silva <xfalcox@gmail.com>
# url: https://github.com/xfalcox/discourse-overwatch-stats

enabled_site_setting :discourse_overwatch_stats_enabled

# Original fields.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_level"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_most_played_hero"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_comprank"

# General achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_blackjack"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_centenary"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_decked_out"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_decorated"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_level_10"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_level_25"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_level_50"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_survival_expert"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_friend_zone"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_path_is_closed"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_undying"

# Support achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_enabler"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_group_health_plan"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_huge_rez"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_huge_success"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_naptime"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_rapid_discord"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_supersonic"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_car_wash"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_floor_is_lava"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_iris_embraces_you"

# Defense achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_armor_up"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_charge"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_cold_snap"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_did_that_sting"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_ice_blocked"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_mine_like_a_steel_trap"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_raid_wipe"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_roadkill"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_simple_geometry"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_smooth_as_silk"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_dragon_is_sated"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_triple_threat"

# Offense achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_clearing_the_area"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_death_from_above"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_die_die_die_die"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_hack_the_planet"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_its_high_noon"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_power_outage"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_rocket_man"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_slice_and_dice"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_special_delivery"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_target_rich_environment"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_their_own_worst_enemy"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_total_recall"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_waste_not_want_not"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_whoa_there"

# Tank achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_anger_management"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_game_over"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_giving_you_the_hook"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_hog_wild"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_i_am_your_shield"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_mine_sweeper"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_power_overwhelming"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_shot_down"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_storm_earth_and_fire"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_the_power_of_attraction"

# Map achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_cant_touch_this"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_double_cap"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_escort_duty"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_lockdown"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_shutout"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_world_traveler"

# Special achievements.
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_four_they_were"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_held_the_door"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_not_a_scratch"
DiscoursePluginRegistry.serialized_current_user_fields << "overwatch_achievement_survived_the_night"

after_initialize do
	load File.expand_path("../app/jobs/scheduled/sync_overwatch_stats.rb", __FILE__)
	load File.expand_path("../lib/overwatch_stats_service.rb", __FILE__)

	# Original fields.
	User.register_custom_field_type('overwatch_level', :integer)
	User.register_custom_field_type('overwatch_most_played_hero', :string)
	User.register_custom_field_type('overwatch_comprank', :integer)

	# General achievements.
	User.register_custom_field_type('overwatch_achievement_blackjack', :boolean)
	User.register_custom_field_type('overwatch_achievement_centenary', :boolean)
	User.register_custom_field_type('overwatch_achievement_decked_out', :boolean)
	User.register_custom_field_type('overwatch_achievement_decorated', :boolean)
	User.register_custom_field_type('overwatch_achievement_level_10', :boolean)
	User.register_custom_field_type('overwatch_achievement_level_25', :boolean)
	User.register_custom_field_type('overwatch_achievement_level_50', :boolean)
	User.register_custom_field_type('overwatch_achievement_survival_expert', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_friend_zone', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_path_is_closed', :boolean)
	User.register_custom_field_type('overwatch_achievement_undying', :boolean)

	# Support achievements.
	User.register_custom_field_type('overwatch_achievement_enabler', :boolean)
	User.register_custom_field_type('overwatch_achievement_group_health_plan', :boolean)
	User.register_custom_field_type('overwatch_achievement_huge_rez', :boolean)
	User.register_custom_field_type('overwatch_achievement_huge_success', :boolean)
	User.register_custom_field_type('overwatch_achievement_naptime', :boolean)
	User.register_custom_field_type('overwatch_achievement_rapid_discord', :boolean)
	User.register_custom_field_type('overwatch_achievement_supersonic', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_car_wash', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_floor_is_lava', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_iris_embraces_you', :boolean)

	# Defense achievements.
	User.register_custom_field_type('overwatch_achievement_armor_up', :boolean)
	User.register_custom_field_type('overwatch_achievement_charge', :boolean)
	User.register_custom_field_type('overwatch_achievement_cold_snap', :boolean)
	User.register_custom_field_type('overwatch_achievement_did_that_sting', :boolean)
	User.register_custom_field_type('overwatch_achievement_ice_blocked', :boolean)
	User.register_custom_field_type('overwatch_achievement_mine_like_a_steel_trap', :boolean)
	User.register_custom_field_type('overwatch_achievement_raid_wipe', :boolean)
	User.register_custom_field_type('overwatch_achievement_roadkill', :boolean)
	User.register_custom_field_type('overwatch_achievement_simple_geometry', :boolean)
	User.register_custom_field_type('overwatch_achievement_smooth_as_silk', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_dragon_is_sated', :boolean)
	User.register_custom_field_type('overwatch_achievement_triple_threat', :boolean)

	# Offense achievements.
	User.register_custom_field_type('overwatch_achievement_clearing_the_area', :boolean)
	User.register_custom_field_type('overwatch_achievement_death_from_above', :boolean)
	User.register_custom_field_type('overwatch_achievement_die_die_die_die', :boolean)
	User.register_custom_field_type('overwatch_achievement_hack_the_planet', :boolean)
	User.register_custom_field_type('overwatch_achievement_its_high_noon', :boolean)
	User.register_custom_field_type('overwatch_achievement_power_outage', :boolean)
	User.register_custom_field_type('overwatch_achievement_rocket_man', :boolean)
	User.register_custom_field_type('overwatch_achievement_slice_and_dice', :boolean)
	User.register_custom_field_type('overwatch_achievement_special_delivery', :boolean)
	User.register_custom_field_type('overwatch_achievement_target_rich_environment', :boolean)
	User.register_custom_field_type('overwatch_achievement_their_own_worst_enemy', :boolean)
	User.register_custom_field_type('overwatch_achievement_total_recall', :boolean)
	User.register_custom_field_type('overwatch_achievement_waste_not_want_not', :boolean)
	User.register_custom_field_type('overwatch_achievement_whoa_there', :boolean)

	# Tank achievements.
	User.register_custom_field_type('overwatch_achievement_anger_management', :boolean)
	User.register_custom_field_type('overwatch_achievement_game_over', :boolean)
	User.register_custom_field_type('overwatch_achievement_giving_you_the_hook', :boolean)
	User.register_custom_field_type('overwatch_achievement_hog_wild', :boolean)
	User.register_custom_field_type('overwatch_achievement_i_am_your_shield', :boolean)
	User.register_custom_field_type('overwatch_achievement_mine_sweeper', :boolean)
	User.register_custom_field_type('overwatch_achievement_power_overwhelming', :boolean)
	User.register_custom_field_type('overwatch_achievement_shot_down', :boolean)
	User.register_custom_field_type('overwatch_achievement_storm_earth_and_fire', :boolean)
	User.register_custom_field_type('overwatch_achievement_the_power_of_attraction', :boolean)

	# Map achievements.
	User.register_custom_field_type('overwatch_achievement_cant_touch_this', :boolean)
	User.register_custom_field_type('overwatch_achievement_double_cap', :boolean)
	User.register_custom_field_type('overwatch_achievement_escort_duty', :boolean)
	User.register_custom_field_type('overwatch_achievement_lockdown', :boolean)
	User.register_custom_field_type('overwatch_achievement_shutout', :boolean)
	User.register_custom_field_type('overwatch_achievement_world_traveler', :boolean)

	# Special achievements.
	User.register_custom_field_type('overwatch_achievement_four_they_were', :boolean)
	User.register_custom_field_type('overwatch_achievement_held_the_door', :boolean)
	User.register_custom_field_type('overwatch_achievement_not_a_scratch', :boolean)
	User.register_custom_field_type('overwatch_achievement_survived_the_night', :boolean)

	if SiteSetting.discourse_overwatch_stats_enabled then

		# Original fields.
		add_to_serializer(:post, :overwatch_level, false) { object.user.custom_fields['overwatch_level'] }
		add_to_serializer(:post, :overwatch_most_played_hero, false) { object.user.custom_fields['overwatch_most_played_hero'] }
		add_to_serializer(:post, :overwatch_comprank, false) { object.user.custom_fields['overwatch_comprank'] }

		# General achievements.
		add_to_serializer(:post, :overwatch_achievement_blackjack, false) { object.user.custom_fields['overwatch_achievement_blackjack'] }
		add_to_serializer(:post, :overwatch_achievement_centenary, false) { object.user.custom_fields['overwatch_achievement_centenary'] }
		add_to_serializer(:post, :overwatch_achievement_decked_out, false) { object.user.custom_fields['overwatch_achievement_decked_out'] }
		add_to_serializer(:post, :overwatch_achievement_decorated, false) { object.user.custom_fields['overwatch_achievement_decorated'] }
		add_to_serializer(:post, :overwatch_achievement_level_10, false) { object.user.custom_fields['overwatch_achievement_level_10'] }
		add_to_serializer(:post, :overwatch_achievement_level_25, false) { object.user.custom_fields['overwatch_achievement_level_25'] }
		add_to_serializer(:post, :overwatch_achievement_level_50, false) { object.user.custom_fields['overwatch_achievement_level_50'] }
		add_to_serializer(:post, :overwatch_achievement_survival_expert, false) { object.user.custom_fields['overwatch_achievement_survival_expert'] }
		add_to_serializer(:post, :overwatch_achievement_the_friend_zone, false) { object.user.custom_fields['overwatch_achievement_the_friend_zone'] }
		add_to_serializer(:post, :overwatch_achievement_the_path_is_closed, false) { object.user.custom_fields['overwatch_achievement_the_path_is_closed'] }
		add_to_serializer(:post, :overwatch_achievement_undying, false) { object.user.custom_fields['overwatch_achievement_undying'] }

		# Support achievements.
		add_to_serializer(:post, :overwatch_achievement_enabler, false) { object.user.custom_fields['overwatch_achievement_enabler'] }
		add_to_serializer(:post, :overwatch_achievement_group_health_plan, false) { object.user.custom_fields['overwatch_achievement_group_health_plan'] }
		add_to_serializer(:post, :overwatch_achievement_huge_rez, false) { object.user.custom_fields['overwatch_achievement_huge_rez'] }
		add_to_serializer(:post, :overwatch_achievement_huge_success, false) { object.user.custom_fields['overwatch_achievement_huge_success'] }
		add_to_serializer(:post, :overwatch_achievement_naptime, false) { object.user.custom_fields['overwatch_achievement_naptime'] }
		add_to_serializer(:post, :overwatch_achievement_rapid_discord, false) { object.user.custom_fields['overwatch_achievement_rapid_discord'] }
		add_to_serializer(:post, :overwatch_achievement_supersonic, false) { object.user.custom_fields['overwatch_achievement_supersonic'] }
		add_to_serializer(:post, :overwatch_achievement_the_car_wash, false) { object.user.custom_fields['overwatch_achievement_the_car_wash'] }
		add_to_serializer(:post, :overwatch_achievement_the_floor_is_lava, false) { object.user.custom_fields['overwatch_achievement_the_floor_is_lava'] }
		add_to_serializer(:post, :overwatch_achievement_the_iris_embraces_you, false) { object.user.custom_fields['overwatch_achievement_the_iris_embraces_you'] }

		# Defense achievements.
		add_to_serializer(:post, :overwatch_achievement_armor_up, false) { object.user.custom_fields['overwatch_achievement_armor_up'] }
		add_to_serializer(:post, :overwatch_achievement_charge, false) { object.user.custom_fields['overwatch_achievement_charge'] }
		add_to_serializer(:post, :overwatch_achievement_cold_snap, false) { object.user.custom_fields['overwatch_achievement_cold_snap'] }
		add_to_serializer(:post, :overwatch_achievement_did_that_sting, false) { object.user.custom_fields['overwatch_achievement_did_that_sting'] }
		add_to_serializer(:post, :overwatch_achievement_ice_blocked, false) { object.user.custom_fields['overwatch_achievement_ice_blocked'] }
		add_to_serializer(:post, :overwatch_achievement_mine_like_a_steel_trap, false) { object.user.custom_fields['overwatch_achievement_mine_like_a_steel_trap'] }
		add_to_serializer(:post, :overwatch_achievement_raid_wipe, false) { object.user.custom_fields['overwatch_achievement_raid_wipe'] }
		add_to_serializer(:post, :overwatch_achievement_roadkill, false) { object.user.custom_fields['overwatch_achievement_roadkill'] }
		add_to_serializer(:post, :overwatch_achievement_simple_geometry, false) { object.user.custom_fields['overwatch_achievement_simple_geometry'] }
		add_to_serializer(:post, :overwatch_achievement_smooth_as_silk, false) { object.user.custom_fields['overwatch_achievement_smooth_as_silk'] }
		add_to_serializer(:post, :overwatch_achievement_the_dragon_is_sated, false) { object.user.custom_fields['overwatch_achievement_the_dragon_is_sated'] }
		add_to_serializer(:post, :overwatch_achievement_triple_threat, false) { object.user.custom_fields['overwatch_achievement_triple_threat'] }

		# Offense achievements.
		add_to_serializer(:post, :overwatch_achievement_clearing_the_area, false) { object.user.custom_fields['overwatch_achievement_clearing_the_area'] }
		add_to_serializer(:post, :overwatch_achievement_death_from_above, false) { object.user.custom_fields['overwatch_achievement_death_from_above'] }
		add_to_serializer(:post, :overwatch_achievement_die_die_die_die, false) { object.user.custom_fields['overwatch_achievement_die_die_die_die'] }
		add_to_serializer(:post, :overwatch_achievement_hack_the_planet, false) { object.user.custom_fields['overwatch_achievement_hack_the_planet'] }
		add_to_serializer(:post, :overwatch_achievement_its_high_noon, false) { object.user.custom_fields['overwatch_achievement_its_high_noon'] }
		add_to_serializer(:post, :overwatch_achievement_power_outage, false) { object.user.custom_fields['overwatch_achievement_power_outage'] }
		add_to_serializer(:post, :overwatch_achievement_rocket_man, false) { object.user.custom_fields['overwatch_achievement_rocket_man'] }
		add_to_serializer(:post, :overwatch_achievement_slice_and_dice, false) { object.user.custom_fields['overwatch_achievement_slice_and_dice'] }
		add_to_serializer(:post, :overwatch_achievement_special_delivery, false) { object.user.custom_fields['overwatch_achievement_special_delivery'] }
		add_to_serializer(:post, :overwatch_achievement_target_rich_environment, false) { object.user.custom_fields['overwatch_achievement_target_rich_environment'] }
		add_to_serializer(:post, :overwatch_achievement_their_own_worst_enemy, false) { object.user.custom_fields['overwatch_achievement_their_own_worst_enemy'] }
		add_to_serializer(:post, :overwatch_achievement_total_recall, false) { object.user.custom_fields['overwatch_achievement_total_recall'] }
		add_to_serializer(:post, :overwatch_achievement_waste_not_want_not, false) { object.user.custom_fields['overwatch_achievement_waste_not_want_not'] }
		add_to_serializer(:post, :overwatch_achievement_whoa_there, false) { object.user.custom_fields['overwatch_achievement_whoa_there'] }

		# Tank achievements.
		add_to_serializer(:post, :overwatch_achievement_anger_management, false) { object.user.custom_fields['overwatch_achievement_anger_management'] }
		add_to_serializer(:post, :overwatch_achievement_game_over, false) { object.user.custom_fields['overwatch_achievement_game_over'] }
		add_to_serializer(:post, :overwatch_achievement_giving_you_the_hook, false) { object.user.custom_fields['overwatch_achievement_giving_you_the_hook'] }
		add_to_serializer(:post, :overwatch_achievement_hog_wild, false) { object.user.custom_fields['overwatch_achievement_hog_wild'] }
		add_to_serializer(:post, :overwatch_achievement_i_am_your_shield, false) { object.user.custom_fields['overwatch_achievement_i_am_your_shield'] }
		add_to_serializer(:post, :overwatch_achievement_mine_sweeper, false) { object.user.custom_fields['overwatch_achievement_mine_sweeper'] }
		add_to_serializer(:post, :overwatch_achievement_power_overwhelming, false) { object.user.custom_fields['overwatch_achievement_power_overwhelming'] }
		add_to_serializer(:post, :overwatch_achievement_shot_down, false) { object.user.custom_fields['overwatch_achievement_shot_down'] }
		add_to_serializer(:post, :overwatch_achievement_storm_earth_and_fire, false) { object.user.custom_fields['overwatch_achievement_storm_earth_and_fire'] }
		add_to_serializer(:post, :overwatch_achievement_the_power_of_attraction, false) { object.user.custom_fields['overwatch_achievement_the_power_of_attraction'] }

		# Map achievements.
		add_to_serializer(:post, :overwatch_achievement_cant_touch_this, false) { object.user.custom_fields['overwatch_achievement_cant_touch_this'] }
		add_to_serializer(:post, :overwatch_achievement_double_cap, false) { object.user.custom_fields['overwatch_achievement_double_cap'] }
		add_to_serializer(:post, :overwatch_achievement_escort_duty, false) { object.user.custom_fields['overwatch_achievement_escort_duty'] }
		add_to_serializer(:post, :overwatch_achievement_lockdown, false) { object.user.custom_fields['overwatch_achievement_lockdown'] }
		add_to_serializer(:post, :overwatch_achievement_shutout, false) { object.user.custom_fields['overwatch_achievement_shutout'] }
		add_to_serializer(:post, :overwatch_achievement_world_traveler, false) { object.user.custom_fields['overwatch_achievement_world_traveler'] }

		# Special achievements.
		add_to_serializer(:post, :overwatch_achievement_four_they_were, false) { object.user.custom_fields['overwatch_achievement_four_they_were'] }
		add_to_serializer(:post, :overwatch_achievement_held_the_door, false) { object.user.custom_fields['overwatch_achievement_held_the_door'] }
		add_to_serializer(:post, :overwatch_achievement_not_a_scratch, false) { object.user.custom_fields['overwatch_achievement_not_a_scratch'] }
		add_to_serializer(:post, :overwatch_achievement_survived_the_night, false) { object.user.custom_fields['overwatch_achievement_survived_the_night'] }

	end
end

